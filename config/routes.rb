Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :stats
    resources :cardio_workouts
    resources :weights_workouts do
      resources :exercises do
        resources :exercise_sets
      end
    end
  end
end
