Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do 
      resources :customers, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' } 
      resources :invoices, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' }
      resources :issuers, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' } 
      resources :price_partials, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' }    
      resources :prices, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' }    
      resources :products, only: [:create, :index, :show, :update, :destroy], constraints: { format: 'json' }    
    end
  end
end
