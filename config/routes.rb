Rails.application.routes.draw do
  root 'main#index'
  match "about", to: "main#index", via: :get # with HTTP Verb Constraints
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
end
