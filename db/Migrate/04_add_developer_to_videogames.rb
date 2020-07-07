class AddDevelopersToVideoGames < ActiveRecord::Migration

    def change
        add_column :videogame, :developer_id, :integer
    end    

end