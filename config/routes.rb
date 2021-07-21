Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create] #/gardens/2/plants
  end

  resources :plants, only: :destroy # DELETE /plants/9
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
