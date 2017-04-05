class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :startingHP
      t.integer :hitDice
      t.string :primaryAbility
      t.string :savingThrow1
      t.string :savingThrow2
      t.text :armorPref
      t.text :weaponPref
      t.integer :profBonus
      t.string :skills
      t.string :startingEquip
      t.integer :cantrip
      t.integer :spellSlots
      t.text :spells

      t.timestamps
    end
  end
end
