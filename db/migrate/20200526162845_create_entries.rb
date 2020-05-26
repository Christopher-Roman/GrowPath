class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :entry_type
      t.text :adhoc_notes
      t.string :growth_phase
      t.text :overall_health
      t.float :water_ph
      t.float :water_volume
      t.boolean :runoff
      t.string :runoff_amount
      t.float :runoff_ppm
      t.float :runoff_ph
      t.string :ppm
      t.string :nutrients_used
      t.boolean :leaves_removed
      t.boolean :flowers_removed
      t.string :leaf_health
      t.string :flower_health
      t.boolean :pests

      t.timestamps
    end
  end
end
