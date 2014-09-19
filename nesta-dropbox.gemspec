# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta/dropbox/version

Gem::Specification.new do |s|
  s.name        = "nesta Dropbox plugin"
  s.version     = Nesta::Dropbox::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Glenn Gillen"]
  s.email       = ["me@glenngillen.com"]
  s.homepage    = "http://glenngillen.com"
  s.summary     = %q{Adds support for Dropbox to Nesta CMS}
  s.description = <<-EOF
Nesta Dropbox extends the Nesta CMS so that content
can be managed via Dropbox, while still giving
developers the flexibility of a ruby-based CMS when
more dynamic features are required.
EOF

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('nesta', '>= 0.10')

  # Test libraries
  s.add_development_dependency('rack-test', '0.6.1')
  s.add_development_dependency('rspec', '~> 2.14.0')
  s.add_development_dependency('test-unit', '1.2.3')
  s.add_development_dependency('webrat', '~> 0.7.3')
end
