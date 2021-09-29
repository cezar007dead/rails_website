class HomeController < ApplicationController
  def index
  end
  def calculate_price
    sqft = params[:sqft].to_i
    price = params[:pricesqft].to_i
    @results = calculate(sqft, price)
  end
  private
  def calculate(sqft, price)
    sqft * price
  end
end
