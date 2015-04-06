Rails.application.routes.draw do

  get 'persons/profile'

  devise_for :users
  resources :static_pages

  resources :orders

  resources :line_items

  resources :carts

  resources :post_categories do
    resources :posts
  end

  resources :product_categories do
    resources :products
  end

  root 'static#home'

  #get '/static#home', as: 'user_root'
  get 'persons/profile', as: 'user_root'

  #namespace :administrator do
    #resources :product_categories
  #end

  scope '/administrator' do
    resources :product_categories
  end

  get '/administrator/dashboard', to: 'administrator#dashboard'


  #THIS IS VERY BAD !

  get '/administrator/product_categories_all', to: 'administrator#product_categories_all'



  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
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
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
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
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
