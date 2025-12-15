Rails.application.configure do
  # CRITICAL: Disable ALL model loading + encryption
  config.eager_load = false
  config.active_record.encryption.enabled = false
  
  # Production basics
  config.cache_classes = true
  config.force_ssl = false
  config.public_file_server.enabled = true
end

# Render $PORT binding
config.hosts << "pharma-api.onrender.com"
config.hosts << "*.onrender.com"

# Skip DB encryption crash (no DB yet)
config.active_record.encryption.skip_encrypting_attributes = true unless ENV["DATABASE_URL"]

# Puma timeout
config.assets.compile = false
config.cache_classes = true
