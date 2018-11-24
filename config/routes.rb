Rails.application.routes.draw do
  root 'mypage#index'

  resources :posts, only: [:create]
end
