class CreateNouns < ActiveRecord::Migration[5.0]
  def change
    create_table :nouns do |t|
      t.string :word
      t.string :theme

    end
  end
end
