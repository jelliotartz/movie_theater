Rails.application.routes.draw do
  namespace :admin do
    resources :auditoria
    resources :movies
    resources :orders
    resources :showtimes

    root to: "auditoria#index"
  end

  resources :movies
  resources :orders

  root to: "movies#index"
end
