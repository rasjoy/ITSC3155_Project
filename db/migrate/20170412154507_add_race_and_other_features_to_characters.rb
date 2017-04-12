class AddRaceAndOtherFeaturesToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :race, foreign_key: true
    add_column :characters, :hp, :integer
    add_column :characters, :strength, :integer
    add_column :characters, :dexterity, :integer
    add_column :characters,  :constitution, :integer
    add_column :characters, :intelligence, :integer
    add_column :characters, :wisdom, :integer
    add_column :characters, :charisma, :integer
    add_column :characters, :cantrip, :integer
  end
end
