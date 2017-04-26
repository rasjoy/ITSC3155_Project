class AddLoginInfoToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :creator, :string
    add_reference :characters, :user, foreign_key: true
  end
end
