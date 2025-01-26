add_gem("bridgetown_theme_single_page_opt_in")
add_gem("dotenv")

gsub_file("config/initializers.rb", /^((?!#.)end)/, "  init :bridgetown_theme_single_page_opt_in\nend")
gsub_file("src/index.md", "layout: default", "layout: bridgetown_theme_single_page_opt_in/landing")

prepend_to_file "frontend/styles/index.css" do
    "@import \"bridgetown_theme_single_page_opt_in/frontend/styles/index.css\";"
    # "@import url("./lander.css");"
end

create_file "src/_data/1_top_banner.yml" do
  <<~YAML
    headline:  <b>ATTN:</b> Call out to your dream customer!! Get set for <u>AWESOME</u> outcomes from taking action!!
  YAML
end

create_file "src/_data/site_metadata.yml" do
  <<~YAML
    title: Your Site's name
    tagline: Something spunky, confident, energetic
    email: support@yourdomain.com
    fb_page: https://www.facebook.com/groups/yourdomain/
    description: >-
      Your spunky catchline and theme about the beneficial outcome you want your customers to capitalize on
    og-image: images/seasonally-stoked-logo.png
    og-title: Your Site's name
    og-description: >-
      Your spunky catchline and theme about the beneficial outcome you want your customers to capitalize on 
    og-url: https://yourdomain.com
    canonical: https://yourdomain.com
    logo: https://yourdomain.com
    address: a PO box on the moon, ideally
    gtm-tag: G-TAGNUMBERS
  YAML
end

# Read the Automations documentation: https://www.bridgetownrb.com/docs/automations
