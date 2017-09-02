class AddGenreToSavedCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :saved_characters, :genre, :string
  end
end
