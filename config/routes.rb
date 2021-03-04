Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tests, only: [:index, :show, :create, :update, :destroy] do
        resources :questions, only: [:show, :create, :update, :destroy]
      end
    end
  end

  root to: 'pages#home'
end
