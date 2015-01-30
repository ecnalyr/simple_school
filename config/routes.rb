Rails.application.routes.draw do
  resources :assignments

  resources :students

  resources :classrooms

  root to: 'visitors#index'
end
