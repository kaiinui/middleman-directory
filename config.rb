activate :relative_assets

activate :fjords do |config|
  config.username = Bundler.settings["fjords_username"]
  config.password = Bundler.settings["fjords_password"]
  config.domain = "directory.middlemanapp.com"
  config.gzip_assets = true
  config.cdn = true
end

activate :ember

configure :build do
  set :ember_variant, :production
  
  activate :minify_css
  activate :minify_javascript
end
