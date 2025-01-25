# frozen_string_literal: true

require "bridgetown"
require "bridgetown_theme_single_page_opt_in/builder"

# @param config [Bridgetown::Configuration::ConfigurationDSL]
Bridgetown.initializer :bridgetown_theme_single_page_opt_in do |config|
  # Add code here which will run when a site includes
  # `init :bridgetown_theme_single_page_opt_in`
  # in its configuration

  # Add default configuration data:
  config.bridgetown_theme_single_page_opt_in ||= {}
  config.bridgetown_theme_single_page_opt_in.my_setting ||= 123

  # Register your builder:
  config.builder SinglePageOptInTheme::Builder

  # You can optionally supply a source manifest:
  config.source_manifest(
    origin: SinglePageOptInTheme,
    components: File.expand_path("../components", __dir__),
    layouts: File.expand_path("../layouts", __dir__),
    content: File.expand_path("../content", __dir__),
    spoi_data: File.expand_path("../data", __dir__)
  )
end
