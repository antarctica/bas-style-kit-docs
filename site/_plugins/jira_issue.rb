# Plugin for retrieving the status of an issue for more dynamic references to issues

require 'json'
require 'open-uri'

module Jekyll
    class JiraIssue < Liquid::Tag
        attr_accessor :context

        VALID_SYNTAX = /([\w-]+)\s*=\s*(?:"([^"\\]*(?:\\.[^"\\]*)*)"|'([^'\\]*(?:\\.[^'\\]*)*)'|([\w\.-]+))/
        VARIABLE_SYNTAX = /(?<variable>[^{]*(\{\{\s*[\w\-\.]+\s*(\|.*)?\}\}[^\s{}]*)+)(?<params>.*)/

        def initialize(tag_name, markup, tokens)
            super
            matched = markup.strip.match(VARIABLE_SYNTAX)

            if matched
                @file = matched['variable'].strip
                @params = matched['params'].strip
            else
                # @file, @params = markup.strip.split(' ', 2)
                @params = markup.strip
            end
            validate_params if @params
            @tag_name = tag_name
        end

        def syntax_example
            "{% #{@tag_name} param='value' param2='value' %}"
        end

        def validate_params
            full_valid_syntax = Regexp.compile('\A\s*(?:' + VALID_SYNTAX.to_s + '(?=\s|\z)\s*)*\z')
            unless @params =~ full_valid_syntax
              raise ArgumentError.new <<-eos
Invalid syntax for jira tag:

#{@params}

Valid syntax:

#{syntax_example}

eos
            end
        end

        def parse_params(context)
            params = {}
            markup = @params

            while match = VALID_SYNTAX.match(markup) do
                markup = markup[match.end(0)..-1]

                value = if match[2]
                    match[2].gsub(/\\"/, '"')
                elsif match[3]
                    match[3].gsub(/\\'/, "'")
                elsif match[4]
                    context[match[4]]
                end

                params[match[1]] = value
            end
            params
        end

        def get_issue(context, issue_id)
            site = context.registers[:site]

            # The Jira user password is read from an environment variable
            jira_password = ENV['JEKYLL_JIRA_ISSUE_PLUGIN_ACCOUNT_PASSWORD'] || false

            # TODO: Sanitise issue id to prevent URL attacks

            # Get issue details from Jira API
            jira_issue_url = "#{site.config['jira_issues']['instance']}/rest/api/2/issue/#{issue_id}"
            response = open(jira_issue_url, http_basic_authentication: [
                    site.config['jira_issues']['username'],
                    jira_password
            ])
            response = JSON.load(response)

            # Debug
            # puts JSON.pretty_generate(response)

            # Add browsable link to issue
            response['x_self_browsable'] = "#{site.config['jira_issues']['instance']}/browse/#{response['key']}"

            # Format fields to be used as attributes
            response['fields']['status']['x_name_as_class'] = response['fields']['status']['name'].downcase.gsub(' ', '-')
            response['fields']['status']['statusCategory']['x_colorName'] = response['fields']['status']['statusCategory']['colorName'].downcase.gsub(' ', '-')

            # Collapse fields for easier reference
            response['x_status'] = response['fields']['status']['name']
            response['x_status_class'] = response['fields']['status']['x_name_as_class']
            response['x_status_colour'] = response['fields']['status']['statusCategory']['x_colorName']

            return response
        end

        def render(context)
            site = context.registers[:site]
            params = parse_params(context) if @params

            # Debug
            # puts params['issue']

            # Get issue details from Jira
            issue = get_issue(context, params['issue'])

            # Debug
            # puts issue['key']
            # puts issue['x_self_browsable']
            # puts issue['x_status']
            # puts issue['x_status_class']
            # puts issue['x_status_colour']

            # Issue component classes

            issue_wrapper_classes = "jira-issue #{site.config['jira_issues']['classes']['wrapper_classes']} #{params['wrapper_classes']}"
            issue_link_classes = "jira-issue-link #{site.config['jira_issues']['classes']['link_classes']} #{params['link_classes']}"
            issue_link_icon_classes = "#{site.config['jira_issues']['classes']['link_icon_classes']} #{params['link_icon_classes']}"
            issue_status_classes = "jira-issue-status jira-issue-status-#{issue['x_status_class']} jira-issue-status-colour-#{issue['x_status_colour']} #{site.config['jira_issues']['classes']['status_classes']} #{params['status_classes']}"

            # Issue component wrapper

            issue_wrapper_opening = "<span class=\"#{issue_wrapper_classes}\">"
            issue_wrapper_closing = "</span>"

            # Issue link element

            issue_link_opening = "<a class=\"#{issue_link_classes}\" href=\"#{issue['x_self_browsable']}\">"
            issue_link_closing = "</a>"
            issue_link_contents = "#{issue['key']}"

            # If icon classes are specified, add these before the link element content in a <i> tag
            if issue_link_icon_classes != ''
                issue_link_contents = "<i class=\"#{issue_link_icon_classes}\" aria-hidden=\"true\"></i> " + issue_link_contents
            end

            # Issue status element

            issue_status_opening = "<span class=\"#{issue_status_classes}\">"
            issue_status_closing = "</span>"
            issue_status_contents = "#{issue['x_status']}"

            # Render complete issue component
            output = "#{issue_wrapper_opening}#{issue_link_opening}#{issue_link_contents}#{issue_link_closing}#{issue_status_opening}#{issue_status_contents}#{issue_status_closing}#{issue_wrapper_closing}"
            return output
        end
    end
end

Liquid::Template.register_tag('jira', Jekyll::JiraIssue)
