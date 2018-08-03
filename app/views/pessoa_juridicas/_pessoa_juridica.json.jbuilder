json.extract! pessoa_juridica, :id, :nome_fantasia, :razao_social, :cnpj, :created_at, :updated_at
json.url pessoa_juridica_url(pessoa_juridica, format: :json)
