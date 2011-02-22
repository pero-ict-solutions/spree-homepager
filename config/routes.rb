Rails.application.routes.draw do
  
  root :controller => "home", :action => "index"

  namespace :admin do
    resources :banners do
      collection do
        post :reorder
      end
    end
  end
  
end
