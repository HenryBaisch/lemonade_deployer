class AddArtistIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :artist_id, :integer
  end
end
