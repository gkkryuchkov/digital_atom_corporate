Rails.application.routes.draw do
  resources :simple_files do
    member do
      # delete :delete_document
      get :deliver_document
    end
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
