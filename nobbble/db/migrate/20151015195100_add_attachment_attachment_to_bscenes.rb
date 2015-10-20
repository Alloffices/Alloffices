class AddAttachmentAttachmentToBscenes < ActiveRecord::Migration
  def self.up
    change_table :bscenes do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :bscenes, :attachment
  end
end
