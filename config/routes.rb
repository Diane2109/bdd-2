Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    get 'pages/index', to: 'pages#index'
    get '/listing', to: 'pages#listing', as: 'listing'

    resources :companies, except: [:destroy]
    get 'companies/:id/delete', to: 'companies#destroy', as: 'delete_company'

    resources :financials, except: [:destroy]
    get 'financials/:id/delete', to: 'financials#destroy', as: 'delete_financial'

end
