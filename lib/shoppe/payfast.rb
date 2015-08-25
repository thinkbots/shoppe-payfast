require 'shoppe/payfast/version'

module Shoppe
  module Payfast
    class << self
      def merchand_id
        Shoppe.settings.payfast_merchand_id
      end

      def merchand_key
        Shoppe.settings.payfast_merchand_key
      end

      def currency
        Shoppe.settings.payfast_currency
      end

      def setup
        Shoppe.add_settings_group :payfast, [
          :payfast_merchand_id,
          :payfast_merchand_key,
          :payfast_currency
        ]
      end

      def setup_payfast
      end
    end
  end
end
