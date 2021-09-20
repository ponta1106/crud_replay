Rails.application.routes.draw do
  get 'comments/create'
  resources :boards
  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
