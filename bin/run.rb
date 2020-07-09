require_relative '../config/environment'
require 'pry'
ActiveRecord::Base.logger = nil
PROMPT = TTY::Prompt.new

def first_prompt
    puts "Welcome to Splash a VideoGame information center"
    # puts "Press enter to return to the main menu"
    sleep 1
    PROMPT.select("Are you a returning:", Customer.name, Developer.name)
    sleep 1
    # case 
    # when 
    # end
   
end

def name_entry
    puts "please enter your name"
    sleep 5
    user_name = gets.chomp
    sleep 1
    puts ("Welcome Back " + user_name)

end

def developer_menu
    # #who is the most popular developer?
    # Developer.most_popular_developer
    # #What is a list of all the companies?
    # Developer.list_of_companies
    # #What is the average age of all the customers that bought video games?
    # Developer.average_age_of_customers
    
    # #after each menu option go back to main developer menu/developer_menu method
end

def customer_menu
    # #What is the most popular platform?
    # Customer.most_popular_platform
    # # What is the top selling game?
    # Customer.top_selling_game
    # # What are all the video game genres?
    # Customer.genre_list

    # #after each menu selection go back to main customer menu/customer_menu method


end





first_prompt
name_entry
customer_menu


puts "Successful exit, see you soon!!"
