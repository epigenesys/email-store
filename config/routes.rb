EmailStore::Engine.routes.draw do
  resources :emails, only: [:index, :show] do
    get :remove, on: :member
  end


  root to: "emails#index"
end
