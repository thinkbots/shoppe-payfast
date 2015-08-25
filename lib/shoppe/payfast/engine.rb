module Shoppe
  module Payfast
    class Engine < Rails::Engine
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
