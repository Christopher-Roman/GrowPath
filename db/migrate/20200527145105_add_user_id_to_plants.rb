class AddUserIdToPlants < ActiveRecord::Migration[6.0]
  def change
  	add_column :plants, :user_id, :integer
  	add_index :plants, :user_id
  end
end
