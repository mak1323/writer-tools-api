class ChangeColumnInputsOnFavorites < ActiveRecord::Migration[5.0]
  def up
    change_column :favorites, :noun, :string
    change_column :favorites, :adjective, :string
  end
  def down
    change_column :favorites, :noun, :integer
    change_column :favorites, :adjective, :integer
  end
end
