Rails.application.routes.draw do
  resources :dress_images
  resources :dresses
  resources :designers
  devise_for :users
  get 'nashville/index'

  get 'tupelo/index'

  get 'whitefish/index'

  get 'welcome/index'

  resources :stores
  resources :designers

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'welcome#index'

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

  match "/whitefish", to: "whitefish#index", :via => 'get'
  match "/tupelo", to: "tupelo#index", :via => 'get'
  match "/nashville", to: "nashville#index", :via => 'get'

  match "/whitefish/experience", to: "whitefish#experience", :via => 'get'
  match "/whitefish/explore", to: "whitefish#explore", :via => 'get'
  match "/whitefish/contact", to: "whitefish#contact", :via => 'get'
  match "/whitefish/designers/:name", to: "whitefish#designer", :via => 'get', :as => 'whitefish_designers_name'

  match "/tupelo/experience", to: "tupelo#experience", :via => 'get'
  match "/tupelo/explore", to: "tupelo#explore", :via => 'get'
  match "/tupelo/contact", to: "tupelo#contact", :via => 'get'

  match "/nashville/experience", to: "nashville#experience", :via => 'get'
  match "/nashville/explore", to: "nashville#explore", :via => 'get'
  match "/nashville/contact", to: "nashville#contact", :via => 'get'


  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]


end
