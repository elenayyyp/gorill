Rails.application.routes.draw do
  get "/shuttles" => "shuttles#index"
  get "/shuttles/:shuttle_num" => "shuttles#show"
  post "/shuttles/new" => "shuttles#create"
  delete "/shuttles/:shuttle_num" => "shuttles#destroy"
  put "/shuttles/:shuttle_num" => "shuttles#update"

  get "/drivers" => "drivers#index"
  get "/drivers/:last_name" => "drivers#show"
  post "/drivers/new" => "drivers#create"
  delete "/drivers/:id" => "drivers#destroy"
  put "/drivers/:id" => "drivers#update"

  get "/trackings" => "trackings#index"
  get "/trackings/:id" => "trackings#show"
  post "/trackings/new" => "trackings#create"
  delete "/trackings/:id" => "trackings#destroy"
  put "/trackings/:id" => "trackings#update"



end
