# encoding: UTF-8
version = File.read(File.expand_path("../GEM_VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree-homepager'
  s.version     = version
  s.summary     = 'Spree extension that creates a homepage and enables a shop owner to place products on that homepage.'
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Peter Berkenbosch, Buddhi DeSilva'
  s.email             = 'peter@pero-ict.nl'
  s.homepage          = 'http://github.com/buddhi-desilva/spree-homepager'
	s.rubyforge_project = 'spree-homepager'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 1.0.0.rc2')
  s.add_dependency('formtastic')
  s.add_development_dependency 'rspec-rails'
end
