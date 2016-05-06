# Plugin to add environment variables to the `site` object in Liquid templates
# Source: https://gist.github.com/nicolashery/5756478

module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)

      # If the revision is known, take the first 7 characters
      site.config['revision'] = ENV['REVISION'] || 'unknown'
      site.config['revision'] = site.config['revision'][0..6]

    end

  end

end
