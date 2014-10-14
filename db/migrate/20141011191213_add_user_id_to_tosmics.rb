class AddUserIdToTosmics < ActiveRecord::Migration
  def change
    add_column :tosmics, :user_id, :integer
    add_index :tosmics, :user_id
  end
end
