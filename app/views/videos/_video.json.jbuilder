json.extract! video, :id, :title, :description, :archive_video, :created_at, :updated_at
json.url video_url(video, format: :json)
