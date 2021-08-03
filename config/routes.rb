Rails.application.routes.draw do
#get "menus", to: "menus#index"

  root to: "main#index"
  #scope shallow_path: "menus" do
    resources :menus do
      resources :submenus, shallow: true
    end
  #end
  #resources :submenus
  #resources :items 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
