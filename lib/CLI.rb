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
   binding.pry
   city_url
  end

  def more_info?
    puts "Would you like to see more information on your city? Type 'yes' or 'no'."
    response = gets.strip

    if response.downcase == "yes"
      info_menu
    elsif response.downcase == "no"
      puts "Goodbye!"
      #should I add a loop to go back to beginning of program/welcome message?
    else
      puts "Invalid command. Please type 'yes' or 'no'."
      more_info?
    end
  end



end
