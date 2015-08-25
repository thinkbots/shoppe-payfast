module Shoppe
  module Payfast
    class Engine < Rails::Engine
      config.before_initialize do
        config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
      end

      initializer 'shoppe.payfast.initializer' do
        Shoppe::Payfast.setup
      end

      config.to_prepare do
        Shoppe::Order.send :include, Shoppe::Payfast::OrderExtensions
        Shoppe::Payment.send :include, Shoppe::Payfast::PaymentExtensions
      end
    end
  end
end
