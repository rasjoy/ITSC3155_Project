class ArmorPreftoPref < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :armorProf, :prof
  end
end
