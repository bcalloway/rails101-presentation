ActionController::Routing::Routes.draw do |map|
  map.resources :comments
  map.resources :blogs

  map.connect 'newblog', :controller => 'blogs', :action => 'new'
  map.root :controller => 'blogs'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
