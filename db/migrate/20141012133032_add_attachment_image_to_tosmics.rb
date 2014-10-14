class AddAttachmentImageToTosmics < ActiveRecord::Migration
  def self.up
    change_table :tosmics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tosmics, :image
  end
end
