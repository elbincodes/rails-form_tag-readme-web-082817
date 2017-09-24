Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  # I need to have a better understanding of exactly what is being said here?
end
