Rails.application.routes.draw do
  devise_for :users

  resources :accounts, except: :show do
    resources :entries, except: :show
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'accounts#index'
end
