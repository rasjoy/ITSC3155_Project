class AddtoCharacters < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :job, foreign_key: true
  end
end
