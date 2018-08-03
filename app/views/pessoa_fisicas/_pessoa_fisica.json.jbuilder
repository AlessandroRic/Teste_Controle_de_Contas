json.extract! pessoa_fisica, :id, :nome, :cpf, :data_de_nascimento, :created_at, :updated_at
json.url pessoa_fisica_url(pessoa_fisica, format: :json)
