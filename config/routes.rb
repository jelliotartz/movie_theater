Rails.application.routes.draw do
  resources :movies do
    resources :orders
  end
end
