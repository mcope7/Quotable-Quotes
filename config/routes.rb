ActionController::Routing::Routes.draw do |map|
  map.authors '/authors', :controller => 'people', :action => 'index'
  map.author '/author/:id', :controller => 'people', :action => 'show'
  map.attributable '/quotes/new/:id', :controller => 'quotes', :action => 'new'
  
  map.resources :quotes
  map.resources :people

  map.root :controller => 'page'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
