Spree::Core::Engine.routes.prepend do
  root :controller => "home", :action => "index"

  namespace :admin do
		resources :homeproducts do
			collection do
				post :update_positions
				post :destroy
			end
		end
		
  end	

end