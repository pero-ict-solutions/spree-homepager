require 'rake'
require 'rake/testtask'
require 'rake/packagetask'
require 'rubygems/package_task'
require 'rspec/core/rake_task'
#require 'cucumber/rake/task'
require 'spree_core/testing_support/common_rake'

RSpec::Core::RakeTask.new
#Cucumber::Rake::Task.new

# task :default => [:spec, :cucumber ]
task :default => [:spec]

spec = eval(File.read('homepager.gemspec'))

Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
end

desc "Release to gemcutter"
task :release => :package do
  require 'rake/gemcutter'
  Rake::Gemcutter::Tasks.new(spec).define
  Rake::Task['gem:push'].invoke
end

desc "Generates a dummy app for testing"
task :test_app do
  ENV['LIB_NAME'] = 'homepager'
  Rake::Task['common:test_app'].invoke
end
