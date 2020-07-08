class CreateVideoGames < ActiveRecord::Migration[4.2]

  def change
    create_table :video_games do |t|
        t.string :name
        t.integer :publishyear
        t.string :genre
        t.string :platform
        t.string :ersb
        t.integer :developer_id
        t.integer :customer_id
    end
  end

end