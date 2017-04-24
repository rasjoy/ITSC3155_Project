class ModifiersMigration2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :modifiers, :class, :job
  end
end
