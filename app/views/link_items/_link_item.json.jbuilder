json.extract! link_item, :id, :url, :name, :icon, :created_at, :updated_at
json.url link_item_url(link_item, format: :json)
