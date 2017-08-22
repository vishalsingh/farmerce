class VideoRequest < ApplicationRecord
	validates :description, presence: true
end
