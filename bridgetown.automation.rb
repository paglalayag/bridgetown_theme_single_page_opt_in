copy_file("spoi_data/data/1_top_banner.yml", "src/_data/1_top_banner.yml")

append_to_file "frontend/styles/index.css" do
	"@import \"bridgetown_theme_single_page_opt_in/frontend/styles/index.css\";"
end

gsub_file("config/initializers", "end", "init :bridgetown_theme_single_page_opt_in\nend") 

# Read the Automations documentation: https://www.bridgetownrb.com/docs/automations
