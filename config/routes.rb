Rails.application.routes.draw do
  get 'mockup', to: 'welcome#mockup'
  root 'welcome#index'
end
