Rails.application.routes.draw do
  root :to => "cocktails#index"
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
