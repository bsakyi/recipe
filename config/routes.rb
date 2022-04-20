Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "pages#home"
get '/home' => 'pages#home'

#get '/recipes', to: 'recipes#index'
#get 'recipes/new', to: 'recipe#new', as: 'new_recipe'
#post 'recipes', to: 'recipes#create'
#get 'recipes/:id/edit', to: 'recipe#edit', as: 'edit_recipe'
#patch 'recipes/:id', to: 'recipe#update'
#get 'recipes/:id', to: 'recipes#show', as: 'recipe'
#delete 'recipe/:id', to: 'recipes#destroy'

resources :recipes do 
  member do 
    post 'like'
  end 
end 

end
