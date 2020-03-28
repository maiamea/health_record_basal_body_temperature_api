Rails.application.routes.draw do
  # resources :basal_body_temperatures
  get 'basal_body_temperatures' => 'basal_body_temperatures#index'
  get 'basal_body_temperatures/new' => 'basal_body_temperatures#new'
  post 'basal_body_temperatures' => 'basal_body_temperatures#create'
  get 'basal_body_temperatures/:id/edit' => 'basal_body_temperatures#edit'
  put 'basal_body_temperatures/:id' => 'basal_body_temperatures#update'
  delete 'basal_body_temperatures/:id' => 'basal_body_temperatures#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
