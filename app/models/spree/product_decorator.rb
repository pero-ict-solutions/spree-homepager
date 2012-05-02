Spree::Product.class_eval do
  scope :on_homepage, where(:show_on_homepage => true)
end