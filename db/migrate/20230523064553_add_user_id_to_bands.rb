class AddUserIdToBands < ActiveRecord::Migration[7.0]
  def change
    add_reference :bands, :user, null: false, foreign_key: true
  end
end
