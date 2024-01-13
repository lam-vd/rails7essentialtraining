Rails.application.routes.draw do
  root 'main#index'
  
  match "about", to: "main#about", via: :get # with HTTP Verb Constraints
  match "hello", to: "main#hello", via: :get
  
  resources :categories do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'
  # get 'catecogies/index'
  # get 'catecogies/show'
  # get 'catecogies/new'
  # get 'catecogies/edit'
  # get 'catecogies/delete'
end