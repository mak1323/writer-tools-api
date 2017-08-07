class CreateBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :backgrounds do |t|
      t.text :background
      t.string :genre_type

    end
  end
end
