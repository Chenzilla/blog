Blog::Application.routes.draw do


  get "subscribers/new"
  get "subscriber/new"
  resources :subscribers

  root 'static_pages#home'
  match '/travel',  to: 'static_pages#travel',  via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/writing', to: 'static_pages#writing', via: 'get'
  match '/science', to: 'static_pages#science', via: 'get'
  match '/food',    to: 'static_pages#food',    via: 'get'
  match '/archive', to: 'static_pages#archive', via: 'get'
  match '/subscribe',  to: 'subscribers#new',            via: 'get'


  #WRITING
  match '/genre_of_the_sentence',to: 'static_pages#wr_14_5_18_genre_of_the_sentence', via: 'get'
  match '/fresh_blood',to: 'static_pages#sc_14_5_15_fresh_blood', via: 'get'
  match '/casual_curios_taiwan', to: 'static_pages#tr_14_6_8_casual_curios_taiwan', via: 'get'
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
