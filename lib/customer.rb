class Customer < ActiveRecord::Base
    has_many :vgs   
    has_many :developers, through: :vgs


end