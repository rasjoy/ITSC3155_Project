class RemoveUidFromCharacters < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :uid, :string
    add_reference :characters, :user, foreign_key: true
  end
end
