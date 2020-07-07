class CreateVideoGames < ActiveRecord::Migration

  def change
    create_table :videogames do |v|
        v.string :name
        v.integer :publishyear
        v.string :genre
        v.string :platform
        v.string :ersb
    end
  end

end