# Plugin to add environment variables to the `site` object in Liquid templates
# Source: https://gist.github.com/nicolashery/5756478

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)

      # If the revision is known, take the first 7 characters
      if ENV['CI_BUILD_REF'] != nil
        site.config['revision'] = ENV['CI_BUILD_REF']
      elsif ENV['REVISION'] != nil
        site.config['revision'] = ENV['REVISION']
      else
        site.config['revision'] = 'unknown'
      end

      site.config['revision'] = site.config['revision'][0..6]

      # If the branch is known, expose as a variable
      if ENV['CI_BUILD_REF_NAME'] != nil
        site.config['branch'] = ENV['CI_BUILD_REF_NAME']
      elsif ENV['BRANCH_NAME'] != nil
        site.config['branch'] = ENV['BRANCH_NAME']
      else
        site.config['branch'] = 'unknown'
      end

    end

  end

end
