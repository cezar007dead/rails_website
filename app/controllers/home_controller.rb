class HomeController < ApplicationController
  def index
    users = User.take(10)
    names = Array.new(10)
    i = 0
    for a in users do
      names[i] = a.first_name
      i = i + 1
    end
    puts "Users Names"
    puts "#{names}"
  end
  def calculate_price
    sqft = params[:area_price][:sqft].to_i
    price = params[:area_price][:pricesqft].to_i
    @results = calculate(sqft, price)
  end
  private
  def calculate(sqft, price)
    sqft * price
  end
end
