require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PharmaApi
  class Application < Rails::Application
    config.load_defaults 8.1
    config.api_only = true
    config.active_job.queue_adapter = :inline
  end
end
