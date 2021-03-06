###
# Blog settings
###

# Time.zone = "UTC"

helpers do
  def youtube id, height
    "<iframe width='100%' height='#{height}' src='http://www.youtube.com/embed/#{id}?modestbranding=1&autohide=1&rel=0' frameborder='0' allowfullscreen></iframe>"

  end
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.user = "deployer"
  deploy.host = "176.58.119.28"
  deploy.path = "newsite"
end

activate :blog do |blog|

  blog.permalink = ":title.html"
  # blog.sources = ":year-:month-:title.html"
  blog.prefix = "/work"

  # blog.taglink = "tags/:tag.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.default_extension = ".html"
  # blog.tag_template = "tag.html"
  # blog.tag_template = "work/tag.html"
  # blog.calendar_template = "work/calendar.html"
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

# page "/feed.xml", :layout => false

###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
activate :directory_indexes

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# set :build_dir, '/Users/john/Dropbox/vault/rapport/newsite'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
