Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/'
  root to: "flats#index"
  # verb path, to: "controllername#action"
  get 'flats/:id', to: "flats#show", as: :flat
end
