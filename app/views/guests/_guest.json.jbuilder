json.extract! guest, :id, :guest_name, :created_at, :updated_at
json.url guest_url(guest, format: :json)
