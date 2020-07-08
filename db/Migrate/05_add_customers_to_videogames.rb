class AddCustomersToVideoGames < ActiveRecord::Migration[4.2]

    def change
        add_column :videogame, :customer_id, :integer
    end    

end