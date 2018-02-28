Rails.application.routes.draw do
  root 'homes#index'
  resources :homes
  get 'recruit' => 'homes#recruit'
  get 'product' => 'homes#product'
  get 'about'   => 'homes#about'
  get 'information' => 'homes#infomation'
  get 'idea'    => 'homes#idea'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
