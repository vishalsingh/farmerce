json.extract! video_request, :id, :description, :created_at, :updated_at
json.url video_request_url(video_request, format: :json)
