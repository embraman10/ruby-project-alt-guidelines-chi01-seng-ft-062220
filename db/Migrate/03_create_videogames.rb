class CreateVideoGames < ActiveRecord::Migration

    def change
        create_table :videogames do |v|
          v.string :name
        end
    end

end