Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "welcome:show"
  resources :users do
    resources :recipes
  end

  resources :sessions
  

  get '/', to: "welcome#index"
  get '/login', to: "sessions#create"
  post '/login', to: "recipes#index"
end
