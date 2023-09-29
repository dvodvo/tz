json.extract! timezone, :id, :utc_offset, :is_dst, :name, :created_at, :updated_at
json.url timezone_url(timezone, format: :json)
