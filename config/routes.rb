Rails.application.routes.draw do
  resources :guests
  root 'guests#index'
end
