require "authlogic_radius_ldap/version"
require "authlogic_radius_ldap/acts_as_authentic"
require "authlogic_radius_ldap/session"

ActiveRecord::Base.send(:include, AuthlogicRadiusLdap::ActsAsAuthentic)
Authlogic::Session::Base.send(:include, AuthlogicRadiusLdap::Session)