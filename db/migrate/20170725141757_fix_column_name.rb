class FixColumnName < ActiveRecord::Migration[5.0]
  def up
    rename_column :adjectives, :attributes, :attribute
  end

  def down
    rename_column :adjectives, :attributee, :attributes
  end
end
