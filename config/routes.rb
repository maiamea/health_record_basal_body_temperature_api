Rails.application.routes.draw do
  namespace "api" do
    # resources :basal_body_temperatures
    get "basal_body_temperatures" => "basal_body_temperatures#index"
    post "basal_body_temperatures" => "basal_body_temperatures#create"
    put "basal_body_temperatures/:id" => "basal_body_temperatures#update"
    delete "basal_body_temperatures/:id" => "basal_body_temperatures#destroy"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
