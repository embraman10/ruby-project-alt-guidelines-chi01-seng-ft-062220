class CreateDevelopers < ActiveRecord::Migration

    def change
        create_table :developers do |d|
          d.string :name
        end
    end

end