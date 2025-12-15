Rails.application.configure do
  config.active_record.encryption.enabled = false
  config.force_ssl = false
  config.cache_classes = true
  config.eager_load = true
end
