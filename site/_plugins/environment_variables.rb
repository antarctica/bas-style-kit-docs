# Plugin to add environment variables to the `site` object in Liquid templates
# Source: https://gist.github.com/nicolashery/5756478

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)

      # If the revision is known, take the first 7 characters

      puts "Amy"
      puts ENV['CI_BUILD_REF']

      if ENV.has_key?('REVISION')
        site.config['revision'] = ENV['REVISION']
      elseif ENV.has_key?('CI_BUILD_REF')
        site.config['revision'] = ENV['CI_BUILD_REF']
      else
        site.config['revision'] = 'unknown'
      end

      puts "Becca"
      site.config['revision']

      site.config['revision'] = site.config['revision'][0..6]

      puts "Connie"
      site.config['revision']

      # If the branch is known, convert to an environment
      site.config['branch'] = (ENV['BRANCH_NAME'] if ENV.has_key?('BRANCH_NAME')) || (ENV['CI_BUILD_REF_SLUG'] if ENV.has_key?('CI_BUILD_REF_SLUG')) || "unknown"
      case site.config['branch']
      when "master"
        site.config['x_environment'] = 'production'
      else
        site.config['x_environment'] = 'staging'
      end
    end

  end

end
