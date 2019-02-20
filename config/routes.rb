Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/about'

  resources :events, param: :title

  match '*_missing_page', to: 'pages#not_found', via: :all
end
