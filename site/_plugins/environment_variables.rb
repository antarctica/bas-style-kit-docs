# Plugin to add environment variables to the `site` object in Liquid templates
# Source: https://gist.github.com/nicolashery/5756478

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)

      # If the revision is known, take the first 7 characters
      site.config['revision'] = ENV['REVISION'] || 'unknown'
      site.config['revision'] = site.config['revision'][0..6]

      # If the branch is known, convert to an environment
      site.config['branch'] = ENV['BRANCH_NAME'] || 'unknown'
      case site.config['branch']
      when "master"
        site.config['x_environment'] = 'production'
      else
        site.config['x_environment'] = 'staging'
      end
    end

  end

end
