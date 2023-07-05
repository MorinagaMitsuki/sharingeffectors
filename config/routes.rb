Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'statics#toppage'
  get 'staticstoppage' =>'statics#toppage'
  get 'statics1' => 'statics#about1'
  get 'statics2' => 'statics#about2'
  resources :effectors, only: [:new,:create,:index,:show] do
  resources :likes, only: [:create, :destroy]

end
end
