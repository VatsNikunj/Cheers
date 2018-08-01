Rails.application.routes.draw do
  devise_for :users
  get '/search' => 'beers#search', :as => 'search_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :beers do
    collection do
      get 'search'
    end
    resources :reviews
  end
  root 'beers#index'
end
