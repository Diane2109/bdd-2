Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    resources :companies, except: [:destroy]
    get 'companies/:id/delete', to: 'companies#destroy', as: 'delete_company'

    resources :financials, except: [:destroy]
    get 'financials/:id/delete', to: 'financials#destroy', as: 'delete_financial'

    resources :users, except: [:destroy]
    get 'users/:id/delete', to: 'users#destroy', as: 'delete_user'

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    get 'logout', to: 'sessions#destroy'

end
