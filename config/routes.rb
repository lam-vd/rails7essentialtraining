Rails.application.routes.draw do
  root 'main#index'
  match "about", to: "main#about", via: :get # with HTTP Verb Constraints
  match "hello", to: "main#hello", via: :get
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
end