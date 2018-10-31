Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: :tasks

  get "/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  get "task/:id", to: "tasks#show", as: :task

  get "task/:id/edit", to: "tasks#edit"
  patch "task/:id", to: "tasks#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
