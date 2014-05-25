json.array!(@webinars) do |webinar|
  json.extract! webinar, :title, :overview, :date, :duration, :presenter, :presinfo, :cost
  json.url webinar_url(webinar, format: :json)
end