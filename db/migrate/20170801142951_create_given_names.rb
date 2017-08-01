class CreateGivenNames < ActiveRecord::Migration[5.0]
  def change
    create_table :given_names do |t|
      t.string :given_name
      t.string :classical_gender

    end
  end
end
