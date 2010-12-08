module Numero
  module Rails
    autoload :Validations, 'numero/rails/validations'

    def self.version
      @version ||= (::Rails.version || RAILS_GEM_VERSION)
    end

    def self.major
      @major ||= version.split('.').first.to_i
    end

    def self.minor
      @minor ||= version.split('.')[1].to_i
    end

    def self.tiny
      @tiny ||= version.split('.').last.to_i
    end
  end
end
