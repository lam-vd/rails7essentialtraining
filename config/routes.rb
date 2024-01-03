Rails.application.routes.draw do
  root 'main#index'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
end
