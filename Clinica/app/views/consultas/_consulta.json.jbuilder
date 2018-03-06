json.extract! consulta, :id, :paciente_id, :data, :descricao, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)
