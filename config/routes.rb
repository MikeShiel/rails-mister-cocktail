Rails.application.routes.draw do
  root "cocktails#index"
  resources :doses, only:[:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:create]

  end
end
