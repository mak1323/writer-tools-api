class FixColumnNameAgainAgain < ActiveRecord::Migration[5.0]
  def up
    rename_column :adjectives, :type, :description
  end

  def down
    rename_column :adjectives, :description, :type
  end
end
