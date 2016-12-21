Rails.application.routes.draw do
  root to: 'products#index'
  get '/en', to: 'enproducts#index'
  get '/show' => 'products#show'
  get '/home/about' => 'products#about'
  get '/products/search' => 'products#search'
  resources :products do
    collection { post :import}
  end
  resources :enproducts

end
