
I18n.enforce_available_locales = false

Time.zone = "America/Chicago"

set :ga_tag, "UA-XXXXXXXX"

# Blog
activate :blog do |blog|
  blog.prefix = "blog"
  blog.default_extension = ".md"
  blog.taglink = "/tags/:tag.html"
  blog.tag_template = "blog/tag.html"
  blog.paginate = true
  blog.layout = "post"
  blog.permalink = "/:title.html"
end

page "/feed.xml", :layout => false
page "/sitemap.xml", :layout => false

# Pretty URLs
activate :directory_indexes

# Syntax
activate :syntax

set :markdown_engine, :kramdown
#set :markdown_engine, :redcarpet
set :markdown, :layout_engine => :erb,
               :fenced_code_blocks => true,
               :tables => true,
               :autolink => true,
               :smartypants => true,
               :with_toc_data => true

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

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

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

set :relative_links, true

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Google Analytics
  set :ga_tag, "UA-47875058-1"

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Aliases: has to be activated last
activate :alias
