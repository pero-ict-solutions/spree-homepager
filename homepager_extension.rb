# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class HomepagerExtension < Spree::Extension
  version "1.0"
  description "Spree extension to create a homepage with some 'featured' products."
  url "http://github.com/pero-ict/spree-homepager-extension"

  # Please use homepager/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    
    Product.class_eval do
      named_scope :on_homepage,:conditions => ["show_on_homepage = ?", true]
    end
    
  end
end
