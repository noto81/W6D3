Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only:[:index, :create, :show, :update, :destroy]  #lists the 8 api endpoint routes

  resources :artworks, only:[:index, :create, :show, :update, :destroy] 


  # get 'users/', to:'users#index', as: 'users' #index
  # get 'users/:id', to: 'users#show', as: 'show_user' #show
  # post 'users/', to:'users#create', as: 'create_user' #create
  # get 'users/new', to: 'users#new', as: 'new_user' #new
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user' #edit
  # patch 'users/:id', to: 'users#update', as: 'patch_user' #update
  # delete 'users/:id', to: 'users#destroy', as: 'destroy_user' #new
  # put 'users/:id', to: 'users#update', as: 'put_user' #new

end






#users

            #     Prefix    Verb     URI Pattern                                                                              Controller#Action
            #     users     GET       /users(.:format)                                                                         users#index
            #               POST      /users(.:format)                                                                         users#create
            #   new_user    GET      /users/new(.:format)                                                                     users#new
            # edit_user     GET       /users/:id/edit(.:format)                                                                users#edit
            #       user    GET      /users/:id(.:format)                                                                     users#show
            #               PATCH     /users/:id(.:format)                                                                     users#update
            #               PUT       /users/:id(.:format)                                                                     users#update
            #               DELETE    /users/:id(.:format)                                                                     users#destroy


            #        Prefix Verb   URI Pattern                                                                              Controller#Action
            #         users GET    /users(.:format)                                                                         users#index
            #     show_user GET    /users/:id(.:format)                                                                     users#show
            #   create_user POST   /users(.:format)                                                                         users#create
            #      new_user GET    /users/new(.:format)                                                                     users#new
            #     edit_user GET    /users/:id/edit(.:format)                                                                users#edit
            #    patch_user PATCH  /users/:id(.:format)                                                                     users#update
            #  destroy_user DELETE /users/:id(.:format)                                                                     users#destroy
            #      put_user PUT    /users/:id(.:format)                                                                     users#update