class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :adjective
      t.integer :noun
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
