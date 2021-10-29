class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=keyword&apiKey=YOUR-API-KEY")
    render json: response.parse(:json)
  end
end
