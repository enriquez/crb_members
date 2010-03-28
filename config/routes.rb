ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'users'
  map.resources :users
  map.resource :user_session

  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.sign_up 'sign-up', :controller => 'users', :action => 'new'
end
