json.array!(@tecnicos) do |tecnico|
  json.extract! tecnico, :id, :nome, :cpf, :telefone
  json.url tecnico_url(tecnico, format: :json)
end
