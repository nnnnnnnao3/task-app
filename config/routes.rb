Rails.application.routes.draw do
  get 'task_items/index'
 root to: "task_items#index"
end
