Rails.application.routes.draw do

  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'

  # delete 'lists/:id', to: 'lists#destroy'

  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
