class ApplicationController < ActionController::API
  # Skip ALL Rails middleware for public API
  skip_before_action :verify_authenticity_token, raise: false
end
