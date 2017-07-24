class RemoveTimestampsFromFavorites < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :created_at, :datetime
    remove_column :favorites, :updated_at, :datetime
  end
end
