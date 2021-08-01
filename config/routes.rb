Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "peliculas#index"
  get "peliculas", to: "peliculas#index"
  post "peliculas", to: "peliculas#create"
  get "peliculas/new", to: "peliculas#new", as: :new
  get "peliculas/:id", to: "peliculas#show", as: :pelicula
  get "peliculas/:id/edit", to: "pelicula#edit", as: :edit
  patch "peliculas/:id", to: "pelicula#update"
  delete "peliculas/:id", to: "peliculas#delete"
end
