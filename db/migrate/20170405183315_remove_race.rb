class RemoveRace < ActiveRecord::Migration[5.0]
  def change
    drop_table :races
  end
end
