class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :nome, null: false, unique: true, limit: 40
      t.decimal :saldo, null: false, default: 0
      t.integer :situacao, null: false, default: 0
      t.belongs_to :pessoa, polymorphic: true

      t.timestamps null: false
    end
    add_index 'conta', [:nome], name: 'index_nome_unique', unique: true
    add_index 'conta', [:pessoa_id, :pessoa_type]
  end
end
