require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MealGenerator
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Where the I18n library should search for translation files
    I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
    
    # Permitted locales available for the application
    I18n.available_locales = [:en, :vi]
    
    # Set default locale to something other than :en
    I18n.default_locale = :vi

    # config.exceptions_app = routes
    # config.eager_load_paths << Rails.root.join("lib")
    # config.autoload_paths << Rails.root.join("lib")
    # I18n.available_locales = [:en, :vi]
    # I18n.default_locale = :vi
  end
end
