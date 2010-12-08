module Numero
  module ActsAsNumero
    RAILS3 = (Rails.version || RAILS_GEM_VERSION).split('.').first.to_i == 3

    class << self
      attr_accessor :numero_column
    end

    def self.included(base)
      base.class_eval do
        extend ClassMethods
      end
    end

    module ClassMethods
      def acts_as_numero(column)
        Numero::ActsAsNumero.numero_column = column
        include Validations
      end
    end

    module Validations
      def self.included(base)
        base.class_eval do
          column = Numero::ActsAsNumero.numero_column
          if RAILS3
            validates column,
              :presence     => true,
              :numericality => { :allow_blank => true },
              :format       => { :with => Numero::VALID_PHONE_NUMBER }
          else
            validates_presence_of     column
            validates_numericality_of column, :allow_blank => true
            validates_format_of       column, :with => Numero::VALID_PHONE_NUMBER
          end
        end
      end
    end
  end
end

::ActiveRecord::Base.send :include, Numero::ActsAsNumero
