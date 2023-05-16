class AddDetailsToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :name, :string
    add_column :artists, :genre, :string
  end
end
