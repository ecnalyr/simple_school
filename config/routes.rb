Rails.application.routes.draw do
  resources :students

  resources :classrooms

  root to: 'visitors#index'
end
