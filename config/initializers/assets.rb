# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js.coffee admin.css )
Rails.application.config.assets.precompile += %w( prejudicial.js.coffee )
Rails.application.config.assets.precompile += %w( administrative.js.coffee )
Rails.application.config.assets.precompile += %w( administrator.js.coffee )
Rails.application.config.assets.precompile += %w( asignator.js.coffee )
Rails.application.config.assets.precompile += %w( fiscal.js.coffee )
Rails.application.config.assets.precompile += %w( judicial.js.coffee )
Rails.application.config.assets.precompile += %w( tutelage.js.coffee )
Rails.application.config.assets.precompile += %w( lawyer.js.coffee )
Rails.application.config.assets.precompile += %w( coordinator.js.coffee )
Rails.application.config.assets.precompile += %w( coordinator/management.js.coffee )
