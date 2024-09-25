Rails.application.routes.draw do
  get "/jobs" => "jobs#index"
  post "/jobs" => "jobs#create"
  get "/jobs/:id" => "jobs#show"
  patch "/jobs/:id" => "jobs#update"
  delete "/jobs/:id" => "jobs#destroy"
end
