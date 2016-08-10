Rails.application.routes.draw do
  get 'ideas/new', to: 'ideas#new'
  get 'ideas', to: 'ideas#index'
  get 'ideas/:id', to: 'ideas#show',as: 'idea'
  post 'ideas', to: 'ideas#create'
  root 'ideas#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
