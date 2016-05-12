Spree::Product.class_eval do
  scope :on_homepage, where(:show_on_homepage => true).order(:position)
	acts_as_list :scope => 'show_on_homepage = 1'
end