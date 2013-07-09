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

ActiveRecord::Schema.define(version: 20130709202014) do

  create_table "eventos", force: true do |t|
    t.string   "nome"
    t.string   "local"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_id",    null: false
  end

  create_table "participacoes", force: true do |t|
    t.integer "evento_id"
    t.integer "pessoa_id"
  end

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "sexo"
    t.integer  "categoria"
    t.string   "clube"
    t.date     "nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.integer "participacao_id"
  end

  create_table "tipos", force: true do |t|
    t.integer "qtd_series"
    t.integer "flechas_por_serie"
    t.integer "distancia"
    t.integer "qtd_rounds",        limit: 2
  end

  create_table "tiros", force: true do |t|
    t.integer "serie_id"
    t.integer "pontuacao",                 null: false
    t.boolean "x",         default: false
  end

end
