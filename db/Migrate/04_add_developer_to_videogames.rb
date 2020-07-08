class AddDevelopersToVideoGames < ActiveRecord::Migration[4.2]

    def change
        add_column :videogame, :developer_id, :integer
    end    

end