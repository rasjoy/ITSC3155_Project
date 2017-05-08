class Addmodto < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :strengthMod, :integer
    add_column :characters, :intelligenceMod, :integer
    add_column :characters, :constitutionMod, :integer
    add_column :characters, :wisdomMod, :integer
    add_column :characters, :dexterityMod, :integer
    add_column :characters, :charismaMod, :integer
  end
end
