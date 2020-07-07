ActiveRecord::Schema.define(version: 1) do

    create_table "developers", force: :cascade do |d|
      d.string "name"
      d.string "company"
      d.string "location"
    end

    create_table "customers", force: :cascade do |c|
        c.string "name"
        c.integer "age"
        c.string "location"
      end

      create_table "videogames", force: :cascade do |t|
        t.string "name"
        t.string "publishyear"
        t.string "genre"
        t.string "platform"
        t.string :ersb
      end

  end