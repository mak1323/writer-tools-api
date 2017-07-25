class FixColumnNameAgain < ActiveRecord::Migration[5.0]
  def up
    rename_column :adjectives, :attribute, :type
  end

  def down
    rename_column :adjectives, :type, :attribute
  end
end
