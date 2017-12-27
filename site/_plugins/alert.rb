# Plugin for rendering BAS Style Kit alerts

module Jekyll
  module Tags
    class AlertBlock < Liquid::Block
      include Liquid::StandardFilters

      # The regular expression syntax checker. Start with the alert variant specifier.
      # Follow that by zero or more space separated options that take one of three
      # forms: name, name=value, or name="<quoted list>"
      #
      # <quoted list> is a space-separated list of numbers
      SYNTAX = /^([a-zA-Z0-9.+#-]+)((\s+\w+(=((\w|[0-9_-])+|"([0-9]+\s)*[0-9]+"))?)*)$/

      def initialize(tag_name, markup, tokens)
        super
        if markup.strip =~ SYNTAX
          @options = {}

          # Set default options
          @options[:variant] = 'info'
          @options[:style] = 'outline'
          @options[:withIcon] = true
          @options[:block] = false

          # Set options from tag arguments
          @options[:variant] = $1.downcase
          if defined?($2) && $2 != ''
            # Split along 3 possible forms -- key="<quoted list>", key=value, or key
            $2.scan(/(?:\w+(?:=(?:(?:\w|[0-9_-])+|"[^"]*")?)?)/) do |opt|
              key, value = opt.split('=')
              # If a quoted list, convert to array
              if value && value.include?("\"")
                  value.gsub!(/"/, "")
                  value = value.split
              end
              @options[key.to_sym] = value || true
            end
          end
        else
          raise SyntaxError.new 'invalid alert'
        end
      end

      def render(context)
        content = super.to_s.strip
        site = context.registers[:site]
        converter = site.find_converter_instance(::Jekyll::Converters::Markdown)

        # Render content
        rendered_output = converter.convert(content)
        rendered_output = rendered_output[3..-6]

        if @options[:withIcon] == true
          @options[:icon] = pick_icon()
        end

        alert = make_alert(rendered_output)

        alert
      end

      def make_alert(content)
        classes = []
        classes << 'bsk-alert'
        classes << "bsk-alert-#{@options[:style]}"
        classes << "bsk-alert-#{@options[:variant]}"

        alert_content = content

        if @options[:withIcon] == true
          classes << 'bsk-alert-icon'
          alert_content = "<i class=\"bsk-alert-icon fa fa-fw #{@options[:icon]}\"></i> \n #{alert_content}"
        end

        if @options[:block] == true
          classes << 'bsk-alert-block'
        end

        alert = "<div class=\"#{classes.join(' ')}\">#{alert_content}</div>"

        alert
      end

      def pick_icon()
        # if the user has set an icon use that, if not use the default for the alert variant
        icon = @options.fetch('icon'.to_sym, pick_variant_default_icon())

        icon
      end

      def pick_variant_default_icon()
        variantIcons = {}
        variantIcons[:success] = 'fa-check'
        variantIcons[:warning] = 'fa-exclamation-triangle'
        variantIcons[:danger] = 'fa-exclamation-circle'
        variantIcons[:info] = 'fa-info'
        variantIcons[:experimental] = 'fa-flask'

        icon = variantIcons.fetch(@options[:variant].to_sym, 'fa-square-o')

        icon
      end

    end
  end
end

Liquid::Template.register_tag('alert', Jekyll::Tags::AlertBlock)

# Default options:
#
# {% alert info style=outline %}
# Hello all
# {% endalert %}

# With supported variant
#
# {% alert success %}
# Hello all
# {% endalert %}

# With supported style
#
# {% alert info style=solid %}
# Hello all
# {% endalert %}

# Without icon
#
# {% alert info withIcon=false %}
# Hello all
# {% endalert %}

# With custom icon
#
# {% alert info icon=fa-lemon %}
# Hello all
# {% endalert %}
