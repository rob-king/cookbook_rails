Rails.application.routes.draw do

  resources :recipes do
    resources :ingredients, only: [:new, :create, :edit, :update, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
