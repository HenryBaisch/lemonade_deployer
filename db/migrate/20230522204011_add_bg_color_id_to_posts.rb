class AddBgColorIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :bg_color_id, :integer
  end
end
