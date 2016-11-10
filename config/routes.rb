Rails.application.routes.draw do
  get 'ingredients/new'

  get 'ingredients/edit'

  get 'ingredients/show'

  get 'recipes/new'

  get 'recipes/edit'

  get 'recipes/show'

  get 'recipes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
