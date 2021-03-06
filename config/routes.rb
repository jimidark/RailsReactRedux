Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :cats, except: [:new, :edit]
      resources :hobbies, except: [:new, :edit]
    end
  end

  resources :users
  post '/login', to: "sessions#create"

end
