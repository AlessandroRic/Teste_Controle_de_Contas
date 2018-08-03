class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :nome, null: false, limit: 70
      t.string :cpf, null: false, unique: true, limit: 11
      t.date :data_de_nascimento, null: false

      t.timestamps null: false
    end
    add_index 'pessoa_fisicas', [:cpf], name: 'index_cpf_unique', unique: true
  end
end
