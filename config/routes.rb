Rails.application.routes.draw do
  resources :homeworks

  resources :assignments

  resources :students

  resources :classrooms

  root to: 'visitors#index'
end
