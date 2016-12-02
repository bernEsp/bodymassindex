require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BodyMassIndex
  class Application < Rails::Application
    config.middleware.use Rack::Cors do
      allow do
        origins 'localhost:3000', '127.0.0.1:8012', 'https://mybodymass.herokuapp.com', 'https://mybodymassindex.herokuapp.com/'
        resource '*',
          headers: :any,
          expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
          methods: [:get, :post, :options, :delete, :put]
      end
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
