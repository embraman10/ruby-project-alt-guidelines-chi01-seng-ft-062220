class CreateDevelopers < ActiveRecord::Migration

    def change
        create_table :developers do |d|
          d.string :name
          d.string :company
          d.string :location
        end
    end

end