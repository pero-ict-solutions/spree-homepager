Spree::Core::Engine.routes.prepend do
  root :controller => "home", :action => "index"

  namespace :admin do
    resources :banners do
      collection do
        post :reorder
      end
    end
  end	
end