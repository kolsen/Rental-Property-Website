OmniAuth.config.logger = Rails.logger
OmniAuth.config.test_mode=true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '580297872072788', '408e71e371aa524dd8d1570766aad685'
end