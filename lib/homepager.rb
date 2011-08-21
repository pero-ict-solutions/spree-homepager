require 'spree_core'
require 'formtastic'
require 'homepager_hooks'

module Homepager
  class Engine < Rails::Engine
    engine_name 'homepager'

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

    end
    config.to_prepare &method(:activate).to_proc
  end
end
