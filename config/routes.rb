Rails.application.routes.draw do
  get "menus", to: "menus#index"

  root to: "main#index"

  resources :menus do
    resources :submenus
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
