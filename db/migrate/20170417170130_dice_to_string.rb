class DiceToString < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :hitDice, :string
  end
end
