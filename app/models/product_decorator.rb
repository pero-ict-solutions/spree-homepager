Product.class_eval do
  scope :on_homepage, :conditions => ["show_on_homepage = ?", true]
end