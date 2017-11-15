Rails.application.routes.draw do

  resources :imagens do
    get 'escolher', :on => :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nomes
  root 'welcome#index'
end
