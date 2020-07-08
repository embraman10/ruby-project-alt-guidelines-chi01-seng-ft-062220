class Developer < ActiveRecord::Base
    has_many :videogames
    has_many :customers, through: :videogames
    
    

end