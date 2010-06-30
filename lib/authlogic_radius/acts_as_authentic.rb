require 'authlogic'

module AuthlogicRadius
  module ActsAsAuthentic
    def self.included(klass)
      klass.class_eval do
        extend Config
        add_acts_as_authentic_module(Methods, :prepend)
      end
    end
    
    module Config
      # Whether or not to validate the radius_login field. If set to false ALL radius validation will need to be
      # handled by you.
      #
      # * <tt>Default:</tt> true
      # * <tt>Accepts:</tt> Boolean
      def validate_radius_login(value = nil)
        rw_config(:validate_radius_login, value, true)
      end
      alias_method :validate_radius_login=, :validate_radius_login
    end
    
    module Methods
      def self.included(klass)
        klass.class_eval do
          attr_accessor :radius_password
          
          if validate_radius_login
            validates_uniqueness_of :radius_login, :scope => validations_scope, :if => :authenticating_with_radius?
            validates_presence_of :radius_password, :if => :authenticating_with_radius?
          end
        end
      end
      
    end
  end
end