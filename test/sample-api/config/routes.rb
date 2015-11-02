Rails.application.routes.draw do
  resources :blogs
  resources :authors
  resources :posts
end
