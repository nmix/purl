Rails.application.routes.draw do
  root 'dashboard#landing'
  get 'dashboard/index'
  
  devise_for :users

  resources :buckets, only: [:create, :destroy] do
    resources :items, only: :index
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
