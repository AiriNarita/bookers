Rails.application.routes.draw do
  resources :books
  resources :homes

  root :to => 'homes#index'
end


