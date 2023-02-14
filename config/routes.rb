Rails.application.routes.draw do
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :friendship_tables
  resources :crawl_event_comments
  resources :pending_invites
  resources :users_at_crawl_events
  resources :crawl_events
  resources :bar_crawl_reviews
  resources :bar_crawls
  resources :reviews
  resources :users
  resources :bars
  
##login route
  post '/login', to: 'sessions#create'
  ##logout route
  delete '/logout', to: 'sessions#destroy'
## me route auto-login
  get '/me', to: 'users#show'
  ## sign up route
  post '/signup', to: 'users#create'
end
