require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "authlogic_radius_ldap"
    gemspec.summary = "Extension of the Authlogic library adding RADIUS and LDAP support."
    gemspec.description = <<-EOF
This is a simple gem to allow authentication against a RADIUS or LDAP server.
EOF
    gemspec.email = "langhorst@neb.com"
    gemspec.homepage = "http://github.com/bwlang/authlogic_radius"
    gemspec.authors = ["Brad Langhorst"]
    gemspec.add_dependency 'authlogic', ">=2.0"
    gemspec.add_dependency 'radiustar', ">=0.0.3"
    gemspec.add_dependency 'net-ldap'
    gemspec.files = Dir['lib/**/*.rb']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
