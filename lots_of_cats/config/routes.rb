Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cats, only:[:create, :destroy, :index, :show, :update, :new]
end
