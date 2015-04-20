Rails.application.routes.draw do

  get 'persons/profile'

  devise_for :users
  resources :static_pages, only: :show

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

  get '/administrator/dashboard', as: 'user_root'

   get '/users/sign_out', to:  redirect("/")

  #namespace :administrator do
    #resources :product_categories
  #end

  namespace :administrator do
    resources :product_categories
    resources :products
    resources :orders
    resources :post_categories
    resources :posts
    resources :site_variables
  end

  #devise_for :users

  get '/administrator', to: 'administrator#dashboard'

  get '/administrator/blocks_in_header', to: 'administrator/site_variables#blocks_in_header'
  get '/administrator/blocks_in_footer', to: 'administrator/site_variables#blocks_in_footer'
  get '/administrator/page_contact', to: 'administrator/site_variables#page_contact'
  get '/administrator/page_company_info', to: 'administrator/site_variables#page_company_info'
  get '/administrator/page_delivery_pay', to: 'administrator/site_variables#page_delivery_pay'

  get '/administrator/settings', to: 'administrator/site_variables#settings'



  #THIS IS VERY BAD !



  
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