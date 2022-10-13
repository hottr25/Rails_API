Rails.application.routes.draw do
  resources :terms, :only => [:index, :show, :create, :update, :destroy]
  resources :types, :only => [:index, :show, :create, :update, :destroy]
end
