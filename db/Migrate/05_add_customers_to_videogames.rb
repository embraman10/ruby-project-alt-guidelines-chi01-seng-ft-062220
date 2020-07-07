class AddCustomersToVideoGames < ActiveRecord::Migration

    def change
        add_column :videogame, :customer_id, :integer
    end    

end