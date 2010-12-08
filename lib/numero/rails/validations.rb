module Numero
  module Rails
    module Validations

      def self.included(base)
        base.class_eval do
          # Rails 1-2
          if Numero::Rails.major < 3
            validates_presence_of       :number
            validates_numericality_of   :number, :allow_blank => true
            validates_format_of         :number, :with => Numero::VALID_PHONE_NUMBER

          # Rails 3
          else
            validates :number,
              :presence     => true,
              :numericality => { :allow_blank => true },
              :format       => { :with => Numero::VALID_PHONE_NUMBER }

          end
        end
      end

    end
  end
end
