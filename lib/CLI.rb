require 'pry'

class CLI

  def begin
    puts "Hello! Welcome to the City Info Daily gem."
    choose_city
  end

  def choose_city
   #puts menu and asks to select a city to view
   puts "Please enter a United States zipcode to see that city's data."
   zip_code = gets.strip
   city_url = "https://www.timeanddate.com/weather/@z-us-#{zip_code}"
   city_url
  end





end
