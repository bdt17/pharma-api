Rails.application.configure do
  config.active_record.encryption.enabled = false
  config.active_record.encryption.primary_key = nil
  config.active_record.encryption.deterministic_key = nil
  config.force_ssl = false
  config.cache_classes = true
  config.eager_load = true
end
