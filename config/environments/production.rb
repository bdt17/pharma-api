Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.force_ssl = true
  
  # Render hosts
  config.hosts << "pharma-api.onrender.com"
  config.hosts << "*.onrender.com"
  
  # Skip DB encryption (no database)
  config.active_record.encryption.skip_encrypting_attributes = true unless ENV["DATABASE_URL"]
  
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
end
