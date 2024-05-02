json.extract! wiki, :id, :title, :description, :link, :author, :created_at, :updated_at
json.url wiki_url(wiki, format: :json)
