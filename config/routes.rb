Rails.application.routes.draw do
  root "champion#index"

  get "/champion/:id", to: "champion#show"
end
