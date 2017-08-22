class CreateVideoRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :video_requests do |t|
      t.string :description

      t.timestamps
    end
  end
end
