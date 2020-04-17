Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :stats, except: [:show]
    resources :cardio_workouts
    resources :weights_workouts do
      resources :exercises, only: [:create, :destroy] do
        resources :exercise_sets, only: [:create, :destroy]
      end
    end
  end
end
