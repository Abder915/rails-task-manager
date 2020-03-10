Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # display all tasks
  get "tasks",              to: "tasks#index", as: :tasks

  # new task
  get "tasks/new",          to: "tasks#new", as: :new_task

  # show a task
  get "tasks/:id",          to: "tasks#show", as: :task

  post "tasks",             to: "tasks#create"

  # edit
  get "tasks/:id/edit",     to: "tasks#edit", as: :edit_task

  # update
  patch "tasks/:id",        to: "tasks#update"

  # delete
  delete "tasks/:id",        to: "tasks#destroy", as: :delete_task
end
