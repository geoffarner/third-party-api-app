class ThirdPartyController < ApplicationController
  def index
    response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=#{Rails.application.credentials.third_party_api[:api_key]}&searchTerm=treasure%20coast%20humane")
    render json: response.parse(:json)
end
