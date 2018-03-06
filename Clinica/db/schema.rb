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

ActiveRecord::Schema.define(version: 20180223121156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultas", force: :cascade do |t|
    t.integer  "paciente_id"
    t.date     "data"
    t.text     "descricao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "consultas", ["paciente_id"], name: "index_consultas_on_paciente_id", using: :btree

  create_table "medicamentos", force: :cascade do |t|
    t.string   "nome_medicamento"
    t.string   "uso"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "nome_mae"
    t.string   "nome_pai"
    t.string   "estado_civil"
    t.string   "nome_conjuge"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "receitas", force: :cascade do |t|
    t.integer  "consulta_id"
    t.integer  "medicamento_id"
    t.string   "complementos"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "receitas", ["consulta_id"], name: "index_receitas_on_consulta_id", using: :btree
  add_index "receitas", ["medicamento_id"], name: "index_receitas_on_medicamento_id", using: :btree

  add_foreign_key "consultas", "pacientes"
  add_foreign_key "receitas", "consultas"
  add_foreign_key "receitas", "medicamentos"
end
