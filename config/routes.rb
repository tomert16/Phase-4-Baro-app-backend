Rails.application.routes.draw do
  resources :crawl_event_comments
  resources :pending_invites
  resources :users_at_crawl_events
  resources :crawl_events
  resources :bar_crawl_reviews
  resources :bar_crawls
  resources :reviews
  resources :users
  resources :bars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
