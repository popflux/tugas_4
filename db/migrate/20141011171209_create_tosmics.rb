class CreateTosmics < ActiveRecord::Migration
  def change
    create_table :tosmics do |t|
      t.string :title

      t.timestamps
    end
  end
end
