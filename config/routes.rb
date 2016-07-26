Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :api do
  #   namespace :v1 do
  #     resources :sites
  #     resources :emails
  #   end
  # end
  #  couldnt get the serializers to work with the scoped api routes...
  resources :emails, only: [:create, :show]
end
