class Video < ApplicationRecord
	has_many :comments, as: :commentable
	belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :archive_video, presence: true
	has_attached_file :archive_video, :styles => {
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :cuadro1 => { :geometry => "640x480#", :format => 'jpg', :time => 1 },
    :cuadro2 => { :geometry => "640x480#", :format => 'jpg', :time => 30 },
    :cuadro3 => { :geometry => "640x480#", :format => 'jpg', :time => 50 },
    :cuadro4 => { :geometry => "640x480#", :format => 'jpg', :time => 100 }
  }, :processors => [:transcoder]

	do_not_validate_attachment_file_type :archive_video

end
