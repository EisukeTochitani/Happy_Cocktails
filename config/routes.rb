Rails.application.routes.draw do
  devise_for :members
  root 'homes#top'
  get 'homes/about'
  resources :posts
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
