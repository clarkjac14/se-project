class CreateAvailableLocs < ActiveRecord::Migration[5.1]
  def change
    create_table :available_locs do |t|
      t.string :label

      t.timestamps
    end
  end
end
