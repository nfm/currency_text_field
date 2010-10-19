module CurrencyTextField
  mattr_accessor :format
  self.format = {}
end

module ActionView
  module Helpers
    class FormBuilder
      include ActionView::Helpers::NumberHelper

      def currency_text_field(method, options = {})
        if options[:format]
          format = CurrencyTextField.format[options[:format]]
          options.delete(:format)
        else
          format = CurrencyTextField.format[:default]
        end

        options[:value] = number_to_currency(self.object.send(method), format)

        return text_field(method, options)
      end
    end
  end
end
