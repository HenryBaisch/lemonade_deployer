class RemoveUserIdAndIndexFromArtists < ActiveRecord::Migration[6.0]
  def change
    remove_index :artists, name: "index_artists_on_user_id"
    remove_column :artists, :user_id, :bigint
  end
end
