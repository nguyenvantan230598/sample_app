Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
ls.application.config.assets.precompile += %w( admin.js admin.css )
