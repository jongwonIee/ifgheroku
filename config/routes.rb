Rails.application.routes.draw do
  root to: 'products#index'
  get '/en', to: 'enproducts#index'
  get '/show' => 'products#show'
  get '/en/show' => 'enproducts#show'
  get '/home/about' => 'products#about'
  get '/products/search' => 'products#search'
  get '/enproducts/search' => 'enproducts#search'
  resources :products do
    collection { post :import}
  end
  resources :enproducts

end
