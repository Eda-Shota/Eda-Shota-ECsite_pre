Rails.application.routes.draw do

  scope module: :public do
  root :to =>"homes#top"
  get "/about"=>"homes#about"
  resources :items, only: [:index, :show]
  resources :customers, only: [:show, :edit, :update]
  get "/customers/:id/withdrawal"=>"customers#withdrawal"
  patch "/customers/:id/withdrawal"=>"customers#withdrawal_update"
  resources :cart_items, only: [:index, :update, :destroy, :create]
  delete "/cart_items/all"=>"cart_items#all_destroy"
  resources :orders, only: [:new, :create, :index, :show]
  get "/orders/confirmation"=>"orders#confirmation"
  get "/orders/completion"=>"orders#completion"
  resources :registered_addresses, only: [:index, :edit, :create, :update, :destroy]
  end

  namespace :admin do
    root :to =>"homes#top"
    resources :items, except: [:destroy]
    resources :genres, only: [:index, :edit, :create, :update]
    resources :customers, only: [:index, :edit, :show, :update]
    resources :orders, only: [:show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :customer,skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
end
