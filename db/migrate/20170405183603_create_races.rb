class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :abilityScore
      t.integer :maxAge
      t.integer :weight
      t.string :alignment
      t.string :size
      t.integer :speed
      t.string :language1
      t.string :language2
      t.string :language3
      t.boolean :darkVision
      t.text :weaponProf
      t.text :armorProf
      t.text :extraAbility1
      t.text :extraAbility2
      t.text :extraAbility3
      t.text :extraAbility4
      t.text :extraAbility5

      t.timestamps
    end
  end
end
