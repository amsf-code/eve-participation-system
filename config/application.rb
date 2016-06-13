# frozen_string_literal: true
require File.expand_path('../boot', __FILE__)

require 'rails/all'
require_relative '../lib/eve_header_injection'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Eve
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.

    # added so the .env is found in the rails root directory and loaded.
    Dotenv.load Rails.root.join('crest_auth.env')
    Spring.watch Rails.root.join('crest_auth.env') if defined?(Spring)

    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.use EveHeaderInjection
  end
end
