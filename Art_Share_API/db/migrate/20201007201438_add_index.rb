class AddIndex < ActiveRecord::Migration[5.2]
  def change
  end
  add_index :users, :username, unique: true 
end
