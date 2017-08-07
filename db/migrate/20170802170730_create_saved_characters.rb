class CreateSavedCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_characters do |t|
      t.string :given_name
      t.string :family_name
      t.text :background
      t.string :comment

    end
  end
end
