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
