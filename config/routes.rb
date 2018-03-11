Rails.application.routes.draw do
  root 'homes#index'
  resources :homes, only: [:index, :new, :create]
  get 'recruit' => 'homes#recruit'#採用情報
  get 'company' => 'homes#company' #会社紹介
  get 'about'   => 'homes#about'  #事業内容
  get 'information' => 'homes#infomation' #企業情報
  get 'idea'    => 'homes#idea'  #企業理念
  get 'introduciton' => 'homes#introduciton' #会社紹介

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
