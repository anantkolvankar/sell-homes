Rails.application.routes.draw do
  
  devise_for :agents
  resources :floorings
  resources :amenities
  resources :properties
  resources :property_types
  devise_for :users
  devise_for :admins
  devise_for :brokers
  devise_for :builders
  devise_for :customers

  root to: "home#index"
  get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'propertys/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: property.id)
  #   get 'propertys/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :propertys

  # Example resource route with options:
  #   resources :propertys do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :propertys do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :propertys do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/propertys/* to Admin::PropertysController
  #     # (app/controllers/admin/propertys_controller.rb)
  #     resources :propertys
  #   end
end
