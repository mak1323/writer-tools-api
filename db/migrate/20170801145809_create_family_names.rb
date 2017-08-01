class CreateFamilyNames < ActiveRecord::Migration[5.0]
  def change
    create_table :family_names do |t|
      t.string :family_name

    end
  end
end
