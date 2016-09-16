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

ActiveRecord::Schema.define(version: 20160916182300) do

  create_table "conteudos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "disciplina_id"
    t.integer  "status_conteudo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "conteudos", ["disciplina_id"], name: "index_conteudos_on_disciplina_id"
  add_index "conteudos", ["status_conteudo_id"], name: "index_conteudos_on_status_conteudo_id"

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.datetime "inicio"
    t.datetime "termino"
    t.integer  "dia_semana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_conteudos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
