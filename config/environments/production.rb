Rails.application.configure do
  # CRITICAL: Disable ALL model loading + encryption
  config.eager_load = false
  config.active_record.encryption.enabled = false
  
  # Production basics
  config.cache_classes = true
  config.force_ssl = false
  config.public_file_server.enabled = true
end
