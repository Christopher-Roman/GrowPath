Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create, :show, :edit]
  resources :plants, only: [:create, :index, :show, :destroy, :edit] do
    resources :entries, only: [:create, :index, :show, :destroy, :edit]
    resources :harvests, only: [:create, :index, :show, :destroy, :edit]
  end
end
