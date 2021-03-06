Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :links, except: [:destroy] do
    resources :articles, only: [:create, :new, :show]
  end


  resources :articles, except: [:destroy]

  root to: 'sessions#new'
end
