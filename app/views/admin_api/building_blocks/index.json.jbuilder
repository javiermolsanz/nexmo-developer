json.events @events do |event|
  json.call(event, :id, :language, :block, :section, :action, :ip, :created_at)
end
