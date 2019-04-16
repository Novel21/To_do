Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :todos
  end

  root to: 'todos#home'
end
