class Developers < ActiveRecord::Base
    has_many :videogames
    has_many :customers, through: :videogames
    
puts "y tho"

end