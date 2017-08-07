class RemoveColumnFromGivenName < ActiveRecord::Migration[5.0]
  def change
    remove_column :given_names, :classical_gender, :string
  end
end
