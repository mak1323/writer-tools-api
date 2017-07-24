class AddCommentToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :comment, :string
  end
end
