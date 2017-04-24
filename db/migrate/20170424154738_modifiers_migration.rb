class ModifiersMigration < ActiveRecord::Migration[5.0]
  def change
    add_column :modifiers, :race, :string
    add_column :modifiers, :class, :string
    add_column :modifiers, :hp, :integer
    add_column :modifiers, :strength, :integer
    add_column :modifiers, :dexterity, :integer
    add_column :modifiers, :constitution, :integer
    add_column :modifiers, :intelligence, :integer
    add_column :modifiers, :wisdom, :integer
    add_column :modifiers, :charisma, :integer
    add_column :modifiers, :cantrip, :integer
  end
end
