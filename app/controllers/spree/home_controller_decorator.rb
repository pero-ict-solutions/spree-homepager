Spree::HomeController.class_eval do
  def index
    @products = Spree::Product.on_homepage
  end
end