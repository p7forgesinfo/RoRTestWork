json.extract! news, :id, :date, :title, :text, :created_at, :updated_at
json.url news_url(news, format: :json)
