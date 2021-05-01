Rails.application.routes.draw do
  
  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
   namespace :admins do
    resources :members, only: [:index, :edit]
    resources :posts, only: [:index, :show, :destroy]
    resources :genres, only: [:index, :edit, :create, :update, :destroy]
  end
  
  devise_for :members, controllers: {
    sessions: "members/sessions",
    registrations: "members/registrations",
  }
 scope module: :members do
    root "homes#top"
    get "homes/about" => "homes#about", as: "about"
    
    resources :members, only: [:show, :edit, :create, :update]
    resources :posts
  
end
  
  


end
