json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :degrees
  json.url temperature_url(temperature, format: :json)
end
