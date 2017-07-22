class AddAttachmentArchivovideoToVideos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :videos do |t|
      t.attachment :archive_video
    end
  end

  def self.down
    remove_attachment :videos, :archive_video
  end
end
