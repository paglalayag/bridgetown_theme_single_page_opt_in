add_gem("bridgetown_theme_single_page_opt_in")
add_gem("dotenv")

gsub_file("config/initializers.rb", /^((?!#.)end)/, "  init :bridgetown_theme_single_page_opt_in\nend")
gsub_file("src/index.md", "layout: default", "layout: bridgetown_theme_single_page_opt_in/landing")

prepend_to_file "frontend/styles/index.css" do
    "@import \"bridgetown_theme_single_page_opt_in/frontend/styles/index.css\";"
    # "@import url("./lander.css");"
end

remove_file("src/_data/site_metadata.yml")
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

create_file "src/_data/1_top_banner.yml" do
  <<~YAML
    headline:  <b>ATTN:</b> Call out to your dream customer!! Get set for <u>AWESOME</u> outcomes from taking action!!
  YAML
end

create_file "src/_data/2_offer_hook.yml" do
  <<~YAML
    subtitle:  <b>Pro-Marketers spend 90% of their time</b> tweaking their <u>HEADLINE</u>!! 
    headline:
      opener: <b>"Don't be afraid</b> to tweak this constantly
      punchline: <b>You never know what is gonna resonate with your dream customers</b>
    kicker: BUT!! Your job isn't done yet, this landing page is here to make a solid first impression for YOU and <i>your OFFERING</i>
    qualifier:  Success in business is hinged on your ability to communicate clearly consistently.
    anchor:  So practice developing your rapport with a regular FREE webinar series.  During this series, you will do regular check-ins with those who identify with the <b>problem you've set out to solve</b> and, when ready, try offering a product or service that you are well positioned to help them solve!
    optin_bonus: PLUS, if you've been doing your homework, you've got lots of hard-earned knowledge that can help them move forward with their problems (maybe with <i>solutions or opportunities</i> they aren't even aware of yet). A confident, empowered buyer is a buyer equipped to succeed!
    disclaimer: <b>NOTE:</b> "It takes 20 years to build a reputation and five minutes to ruin it. - Warren Buffett" Sales and Marketing are both skills that are developed through training.  Most likely, if you are venturing into these methods, you are striking off on your own with small budget, resources and a product or service that may have room for improvement. <i>MAKE SURE</i> to be <b>UP-FRONT and STRAIGHTFORWARD</b> with your audience!! <br><br><u><i>There are laws involved with making commercial offers.  Make sure to check with your country.</i></u>
    image: /images/succeeding_prospect.svg
  YAML
end

create_file "images/succeeding_prospect.svg" do
    "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 300 319\">
        <path d=\"M2699 3186 c-2 -2 -83 -6 -179 -10 -96 -4 -188 -10 -205 -12 -16 -3 -95 -5 -175 -3 -483 7 -610 3 -965 -31 -55 -5 -129 -12 -165 -15 -36 -3 -103 -8 -150 -12 -105 -8 -202 -8 -410 2 -159 7 -240 2 -240 -16 0 -5 20 -9 44 -9 l44 0 -5 -62 c-2 -35 -8 -100 -12 -145 -4 -45 -6 -146 -5 -225 5 -325 5 -580 0 -688 -3 -63 -8 -176 -11 -250 -7 -187 -16 -367 -21 -415 -2 -22 -6 -186 -9 -365 -5 -284 -3 -328 10 -345 28 -36 35 1 36 200 0 105 2 215 4 245 2 30 6 111 10 180 3 69 10 206 15 305 24 479 27 635 21 1065 -2 164 3 303 14 395 3 22 1 55 -4 73 -9 29 -8 33 5 28 74 -28 384 -31 729 -7 485 34 690 43 895 37 120 -4 257 -2 310 3 52 5 178 13 280 16 102 3 195 8 208 11 23 5 30 28 10 40 -13 8 -72 16 -79 10z\"/>
        <path d=\"M2805 3153 c-3 -15 -6 -214 -4 -443 2 -476 -4 -678 -37 -1205 -8 -132 -24 -341 -35 -465 -11 -124 -21 -285 -22 -358 l-2 -132 -30 0 c-17 0 -82 -10 -145 -22 -108 -22 -140 -23 -530 -23 -228 0 -433 3 -455 8 -81 15 -684 20 -900 7 -262 -16 -267 -17 -338 -7 -46 6 -58 5 -55 -5 9 -27 98 -40 223 -32 272 17 1031 9 1125 -12 34 -7 756 -8 805 -1 177 26 245 36 275 40 32 5 37 2 49 -24 16 -36 35 -33 39 5 3 26 5 27 45 21 57 -10 142 -42 157 -60 13 -16 30 -11 30 8 -1 41 -96 91 -190 100 l-45 4 -1 134 c-1 74 5 190 12 259 12 114 27 297 54 655 23 315 36 1474 17 1548 -9 35 -33 35 -42 0z\"/>
        <path d=\"M2450 2839 c-41 -44 -79 -89 -84 -102 -6 -12 -11 -23 -12 -25 -1 -2 -13 4 -27 13 -39 25 -68 11 -107 -52 -46 -73 -90 -196 -78 -217 11 -20 32 -20 51 -2 7 8 28 61 46 118 36 112 51 140 51 93 0 -51 11 -73 36 -78 34 -6 49 9 77 79 14 34 48 92 76 129 34 45 51 78 51 96 0 16 -1 29 -2 28 -2 -1 -37 -37 -78 -80z m-95 -179 c0 -22 -29 -18 -33 3 -3 14 1 18 15 15 10 -2 18 -10 18 -18z\"/>
        <path d=\"M1175 2716 c-101 -48 -145 -117 -145 -226 0 -36 5 -83 10 -104 8 -38 6 -43 -72 -160 -69 -103 -135 -194 -248 -338 -15 -20 -31 -28 -53 -28 -53 0 -106 -19 -144 -53 -39 -35 -89 -131 -99 -194 -8 -51 17 -108 57 -128 86 -45 241 22 305 131 23 38 26 54 22 104 -3 40 -11 70 -25 88 l-20 28 59 74 c33 41 64 76 68 78 5 2 18 -17 29 -42 11 -25 39 -67 63 -93 51 -55 138 -177 138 -192 0 -30 97 -33 198 -5 22 6 22 6 17 -87 -4 -52 -13 -141 -21 -198 -11 -84 -12 -106 -2 -113 21 -13 36 -9 42 10 12 44 35 225 38 305 3 87 3 88 27 82 45 -12 169 -6 231 10 35 9 81 17 102 17 30 0 42 5 49 22 9 18 98 86 114 86 3 0 5 -9 5 -19 0 -26 28 -34 56 -16 17 11 33 46 61 134 34 106 41 120 63 124 24 5 26 10 28 77 2 65 1 71 -20 79 -13 5 -26 7 -29 5 -4 -2 -12 3 -19 11 -7 8 -20 15 -29 15 -23 0 -46 -106 -32 -144 8 -20 5 -40 -17 -96 -15 -38 -30 -70 -34 -70 -8 0 -164 -105 -189 -126 -8 -8 -25 -14 -36 -14 -12 0 -68 -11 -125 -25 -57 -13 -123 -23 -148 -21 l-45 3 2 49 c4 116 9 126 73 157 52 26 171 129 168 145 0 4 7 25 17 47 10 22 20 70 21 107 4 87 -22 131 -79 136 -32 3 -37 0 -37 -17 0 -12 6 -21 14 -21 19 0 24 -10 32 -55 5 -32 -9 -124 -23 -148 -7 -11 -33 7 -46 32 -7 13 -25 30 -40 39 -27 16 -29 16 -47 -5 -18 -23 -70 -32 -70 -14 0 15 -30 41 -47 41 -10 0 -14 -6 -10 -20 3 -10 -1 -24 -9 -31 -8 -6 -14 -18 -14 -26 0 -10 -6 -12 -21 -8 -13 5 -25 2 -30 -6 -17 -28 -19 0 -3 40 31 78 116 120 247 124 58 2 63 4 53 20 -12 19 -13 19 -81 18 -137 -2 -240 -60 -271 -153 -45 -137 3 -249 121 -279 42 -11 43 -11 34 -42 -5 -18 -9 -48 -9 -67 0 -57 -8 -61 -132 -76 -46 -6 -48 -5 -65 26 -44 80 -88 138 -129 169 -25 19 -56 56 -73 87 l-29 54 81 124 c57 87 87 123 97 119 8 -2 35 -7 60 -10 41 -5 51 -1 108 37 143 96 192 229 133 365 -25 56 -41 66 -113 71 -51 3 -72 0 -113 -20z m150 -66 c9 -17 17 -57 18 -88 2 -94 -58 -184 -160 -236 -35 -18 -63 -21 -63 -7 0 5 17 38 39 72 41 68 40 89 -5 89 -15 0 -29 -10 -39 -27 -16 -28 -16 -27 -11 29 2 31 12 72 21 91 21 44 84 89 138 98 23 3 43 7 44 8 1 0 10 -13 18 -29z m-222 -234 c15 -12 16 -18 7 -35 -14 -27 -26 -27 -34 2 -13 48 -5 57 27 33z m967 -321 c0 -19 -4 -35 -10 -35 -11 0 -14 53 -3 63 11 12 13 8 13 -28z m-591 -25 c9 0 22 5 27 10 8 8 19 7 38 -1 l27 -13 -43 -43 c-43 -43 -63 -53 -70 -31 -3 7 -22 11 -50 10 -39 -2 -46 1 -51 19 -8 28 -31 19 -35 -14 -5 -38 33 -60 87 -51 58 9 51 -2 -13 -22 -72 -23 -110 -9 -137 50 -22 49 -24 66 -6 66 8 0 22 9 31 19 10 11 25 17 37 14 10 -3 29 1 42 10 39 25 61 25 80 0 10 -13 26 -23 36 -23z m504 -228 c-4 -9 -12 -25 -18 -35 -12 -17 -13 -17 -35 1 l-23 18 34 21 c38 22 51 21 42 -5z m-1303 -102 c15 -8 20 -4 30 20 17 40 30 29 30 -26 0 -57 -18 -93 -71 -138 -58 -50 -120 -72 -167 -60 -35 9 -37 11 -34 44 7 68 82 172 147 201 l40 18 3 -24 c2 -14 12 -29 22 -35z\"/>
        <path d=\"M1889 2719 c-8 -15 -8 -28 -1 -44 31 -68 76 -285 67 -325 -5 -25 -3 -30 12 -30 11 0 24 5 31 12 15 15 19 10 26 -26 6 -33 22 -47 43 -39 11 5 13 19 7 71 -10 93 -17 116 -41 126 -16 8 -22 22 -27 64 -6 52 -48 173 -69 200 -14 18 -35 15 -48 -9z m127 -296 c16 -21 18 -53 4 -53 -12 0 -30 33 -30 54 0 21 10 20 26 -1z\"/>
        <path d=\"M2523 2567 c-29 -23 -83 -81 -119 -129 -37 -49 -70 -88 -74 -88 -4 0 -10 9 -13 20 -3 13 -14 20 -29 20 -22 0 -71 -53 -122 -133 -38 -60 14 -80 59 -22 l26 35 18 -21 c25 -31 51 -19 114 54 69 80 191 236 205 264 30 56 4 56 -65 0z m-208 -242 c18 -14 18 -16 2 -32 -13 -14 -21 -15 -42 -5 -22 10 -24 15 -15 32 13 24 28 25 55 5z\"/>
        <path d=\"M1334 1242 c-36 -3 -53 -14 -133 -88 -50 -47 -91 -92 -91 -100 0 -8 -7 -25 -15 -37 -21 -32 -85 -236 -85 -272 0 -28 1 -28 13 -10 14 20 116 282 118 300 0 6 32 37 70 70 39 33 83 72 99 87 15 14 30 24 33 21 3 -2 54 -11 114 -19 59 -8 129 -21 155 -31 42 -15 47 -20 50 -52 3 -32 -5 -193 -14 -276 -4 -40 20 -40 44 1 23 39 36 111 42 234 5 92 4 97 -19 123 -23 24 -55 28 -55 6 0 -5 -13 -3 -29 6 -45 23 -212 44 -297 37z\"/>
        <path d=\"M515 10 c3 -5 31 -10 62 -10 70 0 66 5 -10 14 -39 4 -56 3 -52 -4z\"/>
        <path d=\"M2748 3 c18 -2 45 -2 60 0 15 2 0 4 -33 4 -33 0 -45 -2 -27 -4z\"/>
    </svg>"
end

# Read the Automations documentation: https://www.bridgetownrb.com/docs/automations
