add_gem("bridgetown_theme_single_page_opt_in")
add_gem("dotenv")

gsub_file("config/initializers.rb", /^((?!#.)end)/, "  init :bridgetown_theme_single_page_opt_in\nend")

prepend_to_file "frontend/styles/index.css" do
	"@import \"bridgetown_theme_single_page_opt_in/frontend/styles/index.css\";"
	# "@import url("./lander.css");"
end

copy_file("#{ENV[PROJECT_NAME]}content/bridgetown_theme_single_page_opt_in/1_top_banner.yml", "src/_data/1_top_banner.yml")

# Read the Automations documentation: https://www.bridgetownrb.com/docs/automations
