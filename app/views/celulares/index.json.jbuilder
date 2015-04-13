json.array!(@celulares) do |celular|
  json.extract! celular, :id, :cliente_id, :imei, :marca, :numserie
  json.url celular_url(celular, format: :json)
end
