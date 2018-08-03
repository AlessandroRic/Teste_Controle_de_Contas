class CreatePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoa_juridicas do |t|
      t.string :nome_fantasia, null: false, unique: true, limit: 30
      t.string :razao_social, null: false, unique: true, limit: 30
      t.string :cnpj, null: false, unique: true, limit: 14

      t.timestamps null: false
    end
    add_index 'pessoa_juridicas', [:cnpj], name: 'index_cnpj_unique', unique: true
    add_index 'pessoa_juridicas', [:razao_social], name: 'index_razao_social_unique', unique: true
    add_index 'pessoa_juridicas', [:nome_fantasia], name: 'index_nome_fantasia_unique', unique: true
  end
end
