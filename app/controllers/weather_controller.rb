class WeatherController < ApplicationController
  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new

    response.add_speech("こんにちは")
    render json: response.build_response
  end
end
