# frozen_string_literal: true

module SinglePageOptInTheme
  class Builder < Bridgetown::Builder
    def build
      liquid_tag "bridgetown_theme_single_page_opt_in" do
        "This plugin works!"
      end
    end
  end
end
