Rails.application.routes.draw do
  get "/jobs" => "jobs#index"
  post "/jobs" => "jobs#create"
end
