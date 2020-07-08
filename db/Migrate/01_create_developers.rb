class CreateDevelopers < ActiveRecord::Migration[4.2]

    def change
        create_table :developers do |d|
          d.string :name
          d.string :company
          d.string :location
        end
    end

end