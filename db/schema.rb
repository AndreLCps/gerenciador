# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_11_195519) do

  create_table "dados", force: :cascade do |t|
    t.string "razao"
    t.string "nomef"
    t.string "cnpj"
    t.string "ponto"
    t.string "endereco"
    t.string "numero"
    t.string "complemento"
    t.string "cep"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "email"
    t.string "fone1"
    t.string "fone2"
    t.string "homepage"
    t.string "observacoes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
