class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :artist
      t.string :genre
      t.date :date
      t.time :time
      t.string :location
      t.timestamps
    end
  end
end
