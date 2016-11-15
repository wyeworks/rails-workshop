Rails.application.routes.draw do
  devise_for :users

  resources :accounts, except: :show do
    resources :entries
  end

  root 'accounts#index'
end
