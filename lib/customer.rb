class Customer < ActiveRecord::Base
    has_many :videogames   
    has_many :developers, through: :videogames

 

    def self.most_popular_platform
        pop = VideoGame.all.max_by do |p|
            p.platform == self
        end
        pop.platform
    end

    def self.top_selling_game
        pop = VideoGame.all.max_by do |n|
            n.name == self
        end
        pop.name
    end

    def self.genre_list
        genres = VideoGame.all.map do |ge|
            ge.genre
        end
        genres.uniq
    end

    def self.game_by_genre(genre)
        genres = VideoGame.all.select do |game|
            game.genre == genre
        end
        genres
    end


    def self.ersb_by_rating(rate)
        rates = VideoGame.all.select do |game|
            game.ersb == rate
        end
        rates
    end

    #passing ^^
end