class Customer < ActiveRecord::Base
    has_many :videogames   
    has_many :developers, through: :videogames

    # def self.customers_all
    #     self.Customers.all
    # end
    #as a customer I want to select all the genres
    #as a customer I want to 

    # def self.genre
    #     self.all.select do |t|
    #         t.videogames
    #     end
    # end 

    # def video_games
    #     self.videogames.count
    # end 

    



end