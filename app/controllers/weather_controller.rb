class WeatherController < ApplicationController
  def create
    # インテントからcityの文字列を受け取る
    city = request.slots[:city][:value]
    response.add_speech("#{city}を受け取りました")
    render json: response.build_response
  end
end
