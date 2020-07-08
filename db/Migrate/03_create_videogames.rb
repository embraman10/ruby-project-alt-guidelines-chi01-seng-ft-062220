class CreateVideoGames < ActiveRecord::Migration[4.2]

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