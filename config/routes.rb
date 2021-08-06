Rails.application.routes.draw do
## ATEMPT #3 TIPTOP 
## --> minimum complexity and many less un-needed routes

resources :menus, only: [:index, :show, :create, :update, :destroy] do
  resources :submenus, only: [:create]
end

resources :submenus, only: [:show, :update, :destroy] do
  resources :items, only: [ :create]
end

resources :items, only: [:show, :update, :destroy]

root to: "main#index"

## ATEMPT #1  
  #resources :menus do
  #  resources :submenus, shallow: true
  #end

  #resources :submenus do
  #  resources :items
  #end

  #resources :items

  #THE PREVIOUS LINES AUTOMATICLY GENERATED ROUTES
  #WHICH ARE EASY TO USE, BUT THERE WAS JUST 
  #TOO MANY UNUSED ROUTES

## ATEMPT #2
  #get "menus", to: "menus#index"

  #get "menus/:id", to: "menus#show", as: "menu"
  #post "menus/:id", to: "menus#create"
  #patch "menus/:id", to: "menus#update"

  #get "submenu/:id", to: "submenus#show", as:"submenu"
  #post "submenu", to: "submenus#create", as: "menu_submenus"
  #patch "submenu", to: "submenus#update", as: "submenus"

  #get "item/:id", to: "items#show", as: "item"
  #post "item", to: "items#create", as: "submenu_items"
  #patch "item", to: "items#update", as: "items"

  #TRIED TO FIX THE FIRST ISSUE
  #DID NOT WORK BECAUSE ":menu_id" IS NOT PASSED 
  #INTO PARAMS WHEN CALLING UPDATE
  # --> need menu_submenus_path to add a submenu within menu

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
