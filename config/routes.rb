Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :web_pages do
    resources :posts
  end
end
