json.array!(@amoebas) do |amoeba|
  json.extract! amoeba, 
  json.url amoeba_url(amoeba, format: :json)
end
