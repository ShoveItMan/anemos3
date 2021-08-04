Rails.application.routes.draw do
#get "menus", to: "menus#index"

  root to: "main#index"
  resources :menus do
    resources :submenus, shallow: true
  end

  resources :submenus do
    resources :items
  end

  get "item/:id", to: "item#show", as: :item

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
