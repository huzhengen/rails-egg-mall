require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

ENV['ALIPAY_PID'] = 'YOUR-ALIPAY-PARTNER-ID'
ENV['ALIPAY_MD5_SECRET'] = 'YOUR-ALIPAY-MD5-SECRET'
ENV['ALIPAY_URL'] = 'https://mapi.alipay.com/gateway.do'
ENV['ALIPAY_RETURN_URL'] = 'http://localhost:3000/payments/pay_return'
ENV['ALIPAY_NOTIFY_URL'] = 'http://localhost:3000/payments/pay_notify'

module RailsEggMall
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.autoload_paths += %W[#{Rails.root}/lib]

    config.generators do |generator|
      generator.assets false
      generator.test_framework false
      generator.skip_routes true
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
