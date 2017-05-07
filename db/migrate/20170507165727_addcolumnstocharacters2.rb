class Addcolumnstocharacters2 < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :abilityScore, :string
    add_column :characters, :maxAge, :string
    add_column :characters, :weight, :integer
    add_column :characters, :alignment, :string
    add_column :characters, :size, :string
    add_column :characters, :speed, :integer
    add_column :characters, :language1, :string
    add_column :characters, :language2, :string
    add_column :characters, :language3, :string
    add_column :characters, :darkVision, :boolean
    add_column :characters, :weaponProf, :text
    add_column :characters, :prof, :text
    add_column :characters, :extraAbility1, :text
    add_column :characters, :extraAbility2, :text
    add_column :characters, :extraAbility3, :text
    add_column :characters, :extraAbility4, :text
    add_column :characters, :extraAbility5, :text

    add_column :characters, :startingHP, :integer
    add_column :characters, :hitDice, :string
    add_column :characters, :primaryAbility, :string
    add_column :characters, :savingThrow1, :string
    add_column :characters, :savingThrow2, :string
    add_column :characters, :armorPref, :text
    add_column :characters, :weaponPref, :text
    add_column :characters, :profBonus, :integer
    add_column :characters, :skills, :sting
    add_column :characters, :startingEquip, :string
    add_column :characters, :spellSlots, :integer
    add_column :characters, :spells, :text
  end
end
