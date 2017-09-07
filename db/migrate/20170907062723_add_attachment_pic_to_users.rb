class AddAttachmentPicToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :users, :pic
  end
end
