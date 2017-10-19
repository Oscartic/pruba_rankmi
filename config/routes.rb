Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :departments, only:[:index, :show, :create, :update, :destroy]
      get 'list_areas', to: 'list_areas#index'
    end
  end
end
