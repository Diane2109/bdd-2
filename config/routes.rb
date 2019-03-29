Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    get '/dashboard', to: 'pages#dashboard'

    resources :companies, except: [:destroy]
    get 'companies/:id/delete', to: 'companies#destroy', as: 'delete_company'

    resources :financials, except: [:destroy], except: [:new], except: [:create]
    get 'financials/:id/delete', to: 'financials#destroy', as: 'delete_financial'
    get 'companies/:id/financials/new', to: 'financials#new', as: 'new_company_financials'
    post 'financials', to: 'financials#create'

    resources :users, except: [:destroy]
    get 'users/:id/delete', to: 'users#destroy', as: 'delete_user'

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'logout', to: 'sessions#destroy'

end
