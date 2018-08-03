# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180802235213) do

  create_table "conta", force: :cascade do |t|
    t.string   "nome",        limit: 40,               null: false
    t.decimal  "saldo",                  default: 0.0, null: false
    t.integer  "situacao",               default: 0,   null: false
    t.integer  "pessoa_id"
    t.string   "pessoa_type"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "ancestry"
  end

  add_index "conta", ["ancestry"], name: "index_conta_on_ancestry"
  add_index "conta", ["nome"], name: "index_nome_unique", unique: true
  add_index "conta", ["pessoa_id", "pessoa_type"], name: "index_conta_on_pessoa_id_and_pessoa_type"

  create_table "pessoa_fisicas", force: :cascade do |t|
    t.string   "nome",               limit: 70, null: false
    t.string   "cpf",                limit: 11, null: false
    t.date     "data_de_nascimento",            null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "pessoa_fisicas", ["cpf"], name: "index_cpf_unique", unique: true

  create_table "pessoa_juridicas", force: :cascade do |t|
    t.string   "nome_fantasia", limit: 30, null: false
    t.string   "razao_social",  limit: 30, null: false
    t.string   "cnpj",          limit: 14, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "pessoa_juridicas", ["cnpj"], name: "index_cnpj_unique", unique: true
  add_index "pessoa_juridicas", ["nome_fantasia"], name: "index_nome_fantasia_unique", unique: true
  add_index "pessoa_juridicas", ["razao_social"], name: "index_razao_social_unique", unique: true

  create_table "transferencia", force: :cascade do |t|
    t.string   "codigo_alfa_numerico",                  null: false
    t.integer  "tipo",                                  null: false
    t.decimal  "valor",                                 null: false
    t.boolean  "estorno",               default: false, null: false
    t.string   "codigo_estorno"
    t.integer  "conta_debitada_id",                     null: false
    t.decimal  "conta_debitada_saldo",                  null: false
    t.integer  "conta_creditada_id"
    t.decimal  "conta_creditada_saldo"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "transferencia", ["codigo_alfa_numerico"], name: "index_codigo_alfa_numerico_unique", unique: true
  add_index "transferencia", ["codigo_estorno"], name: "index_codigo_estorno_unique", unique: true
  add_index "transferencia", ["conta_creditada_id"], name: "index_transferencia_on_conta_creditada_id"
  add_index "transferencia", ["conta_debitada_id"], name: "index_transferencia_on_conta_debitada_id"

end
