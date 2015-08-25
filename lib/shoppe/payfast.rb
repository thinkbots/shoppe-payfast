require 'shoppe/payfast/version'

module Shoppe
  module Payfast
    class << self
      def merchant_id
        Shoppe.settings.payfast_merchant_id
      end

      def merchant_key
        Shoppe.settings.payfast_merchant_key
      end

      def currency
        Shoppe.settings.payfast_currency
      end

      def setup
        Shoppe.add_settings_group :payfast, [
          :payfast_merchant_id,
          :payfast_merchant_key,
          :payfast_currency
        ]
      end

      def setup_payfast
      end
    end
  end
end
