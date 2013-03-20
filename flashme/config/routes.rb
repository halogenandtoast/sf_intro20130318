Flashme::Application.routes.draw do
  root to: "welcome#show", via: :get

  resource :session, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create]
  resources :decks do
    resources :cards, except: [:index]
  end
end
