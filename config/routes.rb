MokaApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :paintings
  resources :freeboards
  resources :sellbuyboards
  
  root  'static_pages#home'

  match '/paintings', to: 'static_pages#iam', via: 'get'
  
  match '/signup',   to: 'users#new',             via: 'get'
  match '/signin',   to: 'sessions#new',          via: 'get'
  match '/signout',  to: 'sessions#destroy',      via: 'delete'
  match '/board',    to: 'static_pages#board',    via: 'get'
  
  match '/board/freeboard',    to: 'freeboards#index',    via: 'get'
  match '/board/freeboard/write',    to: 'freeboards#new',    via: 'get'
  # match '/board/freeboard/show',    to: 'freeboards#show',    via: 'get'

  match '/board/sellbuyboard',    to: 'sellbuyboards#index',    via: 'get'
  match '/board/sellbuyboard/write',    to: 'sellbuyboards#new',    via: 'get'
  # match '/board/bd4',    to: 'static_pages#bd4',    via: 'get'
  # match '/board/bd5',    to: 'static_pages#bd5',    via: 'get'
  # match '/board/bd6',    to: 'static_pages#bd6',    via: 'get'

  # match '/DoWriteBoard', to: 'static_pages#DoWriteBoard', via: 'post'
  # match '/show_write_form', to: 'static_pages#show_write_form', via: 'get'
  match '/mypage',   to: 'static_pages#MyPage',   via: 'get'
  match '/mypage/iam',   to: 'static_pages#iam',   via: 'get'
  match '/mypage/weare',   to: 'static_pages#weare',   via: 'get'
  match '/mypage/memory',   to: 'static_pages#memory',   via: 'get'

  
  #get "static_pages/home"
  #get "static_pages/board"
  #get "static_pages/MyPage"
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
