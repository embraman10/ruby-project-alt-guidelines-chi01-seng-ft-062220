class CreateCustomers < ActiveRecord::Migration[4.2]

  def change
    create_table :customers do |c|
        c.string :name
        c.integer :age
        c.string :location
      end
    end

end
