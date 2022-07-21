Rails.application.routes.draw do
  get "/test_api" => "third_party#index"
end
