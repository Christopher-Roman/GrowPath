class CreateHarvests < ActiveRecord::Migration[6.0]
  def change
    create_table :harvests do |t|
      t.string :harvest_type
      t.float :total_yield

      t.timestamps
    end
  end
end
