json.extract! paciente, :id, :nome, :cpf, :rg, :nome_mae, :nome_pai, :estado_civil, :nome_conjuge, :endereco, :bairro, :cep, :cidade, :uf, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
