class HomeController < Spree::BaseController
  helper :products
  
  def index
    @products = Product.on_homepage.active
  end

end
