Rails.application.routes.draw do


  resources :links

  resources :pageimages

  resources :slides

  resources :otds

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts do
    get "delete"
  end

  resources :documents do
    get "delete"
  end

  resources :people do
    get "delete"
  end

  resources :filials do
    get "delete"
  end

  resources :abouttexts do
    get "delete"
  end
  

  resources :jobs




  match '/about', to: 'pages#about', via: 'get'
  match '/service', to: 'pages#service', via: 'get'
  match '/help', to: 'pages#help', via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  
  match '/backend', to: 'backend#index', via: 'get'
  match '/backend/posts', to: 'backend#posts', via: 'get'

  



  root 'pages#home'

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
