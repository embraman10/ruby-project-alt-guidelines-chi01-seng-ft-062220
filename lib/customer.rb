class Customer < ActiveRecord::Base
    has_many :video_games   
    has_many :developers, through: :video_games

 

    def self.most_popular_platform
        pop= VideoGame.all.max_by do |p|
            p.platform == self
        end
        pop.platform
    end

    def self.top_selling_game
        pop= VideoGame.all.max_by do |n|
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
        genres.map do |n|
            n.name
        end 
    end


    def self.esrb_by_rating(rate)
        rates = VideoGame.all.select do |game|
            game.ersb == rate
        end
        rates.map do |r|
            r.name
        end
    end

    #passing ^^
end