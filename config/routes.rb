Rails.application.routes.draw do
  root to: 'products#index'
  get '/en', to: 'enproducts#index'
  get ':controller(/:action(/:id))'
  resources :products do
    collection { post :import}
  end
  resources :enproducts

end
