module Shoppe
  module Payfast
    module PaymentExtensions
      # Payfast Transaction URL
      def transaction_url
        if Rails.env.production?
          'https://www.payfast.co.za/eng/process'
        else
          'https://sandbox.payfast.co.za/eng/process'
        end
      end
    end
  end
end
