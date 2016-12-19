Rails.application.routes.draw do
  root to: 'products#index'
  get '/en', to: 'enproducts#index'

  resources :products do
    collection { post :import}
  end
  resources :enproducts

end
