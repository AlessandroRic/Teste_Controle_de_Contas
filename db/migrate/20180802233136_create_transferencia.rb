class CreateTransferencia < ActiveRecord::Migration
  def change
    create_table :transferencia do |t|
      t.string :codigo_alfa_numerico, null: false, unique: true
      t.integer :tipo, null: false
      t.decimal :valor, null: false
      t.boolean :estorno, null: false, default: 0
      t.string :codigo_estorno, unique: true
      t.belongs_to :conta_debitada, as: :conta, null: false, index: true
      t.decimal :conta_debitada_saldo, null: false
      t.belongs_to :conta_creditada, as: :conta, index: true
      t.decimal :conta_creditada_saldo

      t.timestamps null: false
    end
    add_index :transferencia, [:codigo_alfa_numerico], name: 'index_codigo_alfa_numerico_unique', unique: true
    add_index :transferencia, [:codigo_estorno], name: 'index_codigo_estorno_unique', unique: true
  end
end
