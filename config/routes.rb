Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'companies#index'

    resources :companies, except: [:destroy], except: [:new]
    get 'new', to: 'companies#new'
    get 'companies/:id/delete', to: 'companies#destroy', as: 'delete_company'

end
