class AddColumnToSavedCharacters < ActiveRecord::Migration[5.0]
  def change
    add_reference :saved_characters, :user, foreign_key: true
  end
end
