class Customer < ActiveRecord::Base
    has_many :vgs   
    has_many :developers, through: :vgs

 

    def self.most_popular_platform
        pop= VG.all.max_by do |p|
            p.platform == self
        end
        pop.platform
    end

    def self.top_selling_game
        pop= VG.all.max_by do |n|
            n.name == self
        end
        pop.name
    end

    def genre_list
        genres = VG.all.map do |ge|
            ge.genre
        end
        genres.uniq
    end

    def self.game_by_genre(genre)
        genres = VG.all.select do |game|
            game.genre == genre
        end
        genres
    end


    def self.ersb_by_rating(rate)
        rates = VG.all.select do |game|
            game.ersb == rate
        end
        rates
    end

    #passing ^^



    def self.ersb_by_age(age)
        games = VG.all.map do |game|
            game.ersb
        end
        games
        binding.pry
    end

end