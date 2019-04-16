Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }, path_names:{ sign_out: 'logout'}
  resources :users, only: :show
  resources :categories do
    resources :subcategories
  end
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  #devise_scope :user do
    #root to: "devise/sessions#new"
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
