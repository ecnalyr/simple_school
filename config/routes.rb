Rails.application.routes.draw do
  resources :classrooms

  root to: 'visitors#index'
end
