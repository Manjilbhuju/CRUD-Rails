class CreatePandas < ActiveRecord::Migration[7.0]
  def change
    create_table :pandas do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :group

      t.timestamps
    end
  end
end
