Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree-homepager'
  s.version     = '0.40.8'
  s.summary     = 'Spree extension that creates a homepage and enables a shop owner to place products on that homepage.'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Peter Berkenbosch'
  s.email             = 'peter@pero-ict.nl'
  s.homepage          = 'http://www.pero-ict.nl'
  s.rubyforge_project = 'spree-homepager'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '~> 0.40.3')
end