require_relative '../config/environment'
require 'pry'
ActiveRecord::Base.logger = nil
# PROMPT = TTY::Prompt.new
Customer.most_popular_platform


def first_prompt
    prompt = TTY::Prompt.new
    system("clear")
    welcome = prompt.select("Welcome to Splash a VideoGame information center!") do |menu|
        menu.choice 'Customer'
        menu.choice 'Developer'
        menu.choice 'Exit'
    end
    if welcome == 'Customer'
        puts "Please enter your name"
        sleep 5
        user_name = gets.chomp
        sleep 1
        puts ("Welcome Back " + user_name)
        sleep 5
        name_entry_customer
    elsif welcome == 'Developer'
        puts "Please enter your name"
        sleep 5
        user_name = gets.chomp
        sleep 1
        puts ("Welcome Back " + user_name)
        sleep 5
        name_entry_developer
    else 
        puts "Successful Exit, see you next time!"
    end
    
end 

def name_entry_customer
    prompt = TTY::Prompt.new
    system("clear")
    
    customer = prompt.select("Here's the Customer menu:") do |menu|
        menu.choice 'What is the most popular platform?'
        menu.choice 'What is the top selling game?'
        menu.choice 'What are all the video game genres?'
        menu.choice 'Go back'
    end

    if customer == 'What is the most popular platform?'
        puts Customer.most_popular_platform
        sleep 5
        name_entry_customer
    elsif customer == 'What is the top selling game?'
        puts Customer.top_selling_game
        sleep 5
        name_entry_customer
    elsif customer == 'What are all the video game genres?'
        puts Customer.genre_list
        sleep 5
        name_entry_customer
    else 
        first_prompt
    end 

    
end

def name_entry_developer
    prompt = TTY::Prompt.new
    system("clear")
    
    developer = prompt.select("Here's the Developer menu:") do |menu|
        menu.choice 'Find the most popular developer.'
        menu.choice 'Generate a list of all companies Developers work for.'
        menu.choice 'Find the average age of all customers that bought Video Games.'
        menu.choice 'Go back'
    end

    if developer == 'Find the most popular developer.'
        puts Developer.most_popular_developer
        sleep 5
        name_entry_developer
    elsif developer == 'Generate a list of all companies Developers work for.'
        puts Developer.list_of_companies
        sleep 5
        name_entry_developer
    elsif developer == 'Find the average age of all customers that bought Video Games.'
        puts Developer.average_age_of_customers
        sleep 5
        name_entry_developer
    else 
        first_prompt
    end 
end

first_prompt

# def developer_menu
#     # @option_1 = Developer.most_popular_developer
#     option_2 = Developer.list_of_companies
#     option_3 = Developer.average_age_of_customers
#     PROMPT.select("Developer Menu Options", "Find the most popular developer.", "Generate a list of all companies Developers work for.", "Find the average age of all customers that bought Video Games")
#     if "Find the most popular developer."
#         then Developer.most_popular_developer
#     # elseif "Generate a list of all companies Developers work for."
#     #     then Developer.list_of_companies
#     end 
#     # #who is the most popular developer?
#     # Option 1 Developer.most_popular_developer
#     # #What is a list of all the companies?
#     # Developer.list_of_companies
#     # #What is the average age of all the customers that bought video games?
#     # Developer.average_age_of_customers
    
#     # #after each menu option go back to main developer menu/developer_menu method
# end

# def customer_menu
#     PROMPT.select("What is the most popular platform?", "What is the top selling game?", "What are all the video game genres?")
#     # #What is the most popular platform?
#     # Customer.most_popular_platform
#     #  What is the top selling game?
    # Customer.top_selling_game
    # # What are all the video game genres?
    # Customer.genre_list

    # #after each menu selection go back to main customer menu/customer_menu method




# sleep 1
    
    # PROMPT.select("Are you a returning:", Customer.name, Developer.name)
    # sleep 1
    

    # if "Customer"
    #     then name_entry
    #     # then customer_menu
    # elsif "Developer"
    #     then name_entry
        
    #     # then developer_menu
    # end 


    # case ""
    # when "Developer"
    #     name_entry
    # when "Customer"
    #     name_entry
    # end
    # case 
    # when 
    # end
   
#end    


# end





# # name_entry
# developer_menu
# customer_menu


# puts "Successful exit, see you soon!!"
