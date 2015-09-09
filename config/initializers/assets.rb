# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( mystyle.css )
Rails.application.config.assets.precompile += %w( bootstrap-md.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-md.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-md-morphFab.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-md-toaster.min.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
