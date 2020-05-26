class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :garden_type
      t.string :experience_level
      t.boolean :notification

      t.timestamps
    end
  end
end
