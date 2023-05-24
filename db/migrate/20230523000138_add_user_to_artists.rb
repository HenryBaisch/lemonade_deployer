class AddUserToArtists < ActiveRecord::Migration[7.0]
  def change
    add_reference :artists, :user, null: true, foreign_key: true
  end
end
