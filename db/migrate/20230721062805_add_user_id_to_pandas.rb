class AddUserIdToPandas < ActiveRecord::Migration[7.0]
  def change
    add_column :pandas, :user_id, :integer
    add_index :pandas, :user_id
  end
end
