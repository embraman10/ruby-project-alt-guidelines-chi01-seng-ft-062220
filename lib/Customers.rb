class Customers < ActiveRecord::Base
    has_many :videogames   
    has_many :developers, through: :videogames



end