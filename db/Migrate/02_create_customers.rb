class CreateCustomers < ActiveRecord::Migration

    def change
        create_table :customers do |c|
          c.string :name
        end
    end

end