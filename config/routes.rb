Gocha::Application.routes.draw do
  resources :activity_record3s

  resources :weekdays

  resources :models

  get "users/new"

  resources :diets
  resources :coaches
  resources :activities
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "activities/new"
  get "activities/index"
  get "coaches/new"
  get "coaches/index"
  get "diets/new"
  get "diets/index"
  # get "static_pages/home"
  root "static_pages#home"
  post "activity_record3s/new"

  match '/showusers', to: 'users#index',          via: 'get'
  match '/add_activity_to_plan', to: 'activity_record3s#new',          via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/signout', to: 'sessions#destroy',     via: 'get'
  # match '/login',  to: 'static_pages#home',            via: 'get'
  match '/about',  to: 'static_pages#about',            via: 'get'
  # match '/coaches',  to: 'static_pages#coaches',            via: 'get'
  # match '/activities',  to: 'static_pages#home',            via: 'get'


  # get "static_pages/help"
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
