Rails.application.routes.draw do
  get "dogs/popular_index", to: "dogs#popular_index", as: "popular_dogs"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
