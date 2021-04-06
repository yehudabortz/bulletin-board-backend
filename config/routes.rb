Rails.application.routes.draw do
  resources :items, only: [:create]
  resources :boards, except: [:edit, :new]
  resources :bulletins, except: [:update, :edit, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
