module Numero
  module ActsAsNumero
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
      end
    end
  end
end

::ActiveRecord::Base.send :include, Numero::ActsAsNumero
