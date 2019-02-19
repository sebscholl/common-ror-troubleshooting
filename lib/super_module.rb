module SuperModule
  def prettify_name
    "Event #{title.first(5)}... occurred on #{created_at}"
  end
end
