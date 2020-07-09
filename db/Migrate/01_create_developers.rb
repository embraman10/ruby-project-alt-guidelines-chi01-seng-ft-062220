class CreateDevelopers < ActiveRecord::Migration[4.2]

    def change
        create_table :developers do |t|
          t.string :name
          t.string :company
          t.string :location
        end
    end
end