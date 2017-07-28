class AddAttachmentVideoToModels < ActiveRecord::Migration
  def self.up
    change_table :models do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :models, :video
  end
end
