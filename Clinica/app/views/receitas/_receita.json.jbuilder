json.extract! receita, :id, :consulta_id, :medicamento_id, :complementos, :created_at, :updated_at
json.url receita_url(receita, format: :json)
