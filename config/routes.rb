ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'users'
  map.resources :users
  map.resource :user_session
  map.sign_up 'sign-up', :controller => 'users', :action => 'new'
  map.sign_in 'sign-in', :controller => 'user_sessions', :action => 'new'
end
