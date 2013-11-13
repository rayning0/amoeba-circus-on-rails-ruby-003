json.array!(@acts) do |act|
  json.extract! act, 
  json.url act_url(act, format: :json)
end
