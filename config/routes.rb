Rails.application.routes.draw do
  
  root :controller => "home", :action => "index"

  namespace :admin do |admin|
    resources :banners, :collection => { :reorder => :any}
  end
  
end
