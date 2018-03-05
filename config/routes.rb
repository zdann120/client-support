Rails.application.routes.draw do
  resources :organizations do
    resources :projects do
      resources :help_tickets, controller: 'organization/help_tickets', only: [:create]
    end
  end
  devise_for :users, controllers: { registrations: "registrations", :passwords => "passwords" }
  root 'pages#home'
  get 'admin' => 'admin#index'
  get 'admin/edit' => 'admin#edit'
  patch 'admin/edit' => 'admin#update'
  delete 'admin/edit' => 'admin#destroy'
  get 'admin/confirm' => 'admin#confirm'
  get 'admin/unlock' => 'admin#unlock'
end
