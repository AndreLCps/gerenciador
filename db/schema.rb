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

ActiveRecord::Schema.define(version: 2022_07_22_122414) do

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
    t.string "nome_completo"
    t.string "cpf"
    t.date "data_de_nascimento"
    t.string "payment_agency"
    t.time "office_hours"
    t.string "agency_number"
    t.string "agency_full_name"
    t.string "checking_accont_label"
    t.string "sessions_new_fone_number"
    t.string "bank_code"
    t.string "agency_short_name"
    t.string "title_name"
    t.string "url_ajuda"
    t.string "conta_header"
    t.string "endereco_pasta_arquivos"
    t.string "aplicativo"
    t.string "gerencial"
    t.string "internet_banking"
    t.string "nome_dpo"
    t.string "email_dpo"
    t.string "fone_dpo"
    t.boolean "lojas_apps_android_ios"
    t.boolean "email_devs_cashway"
    t.string "email_validate"
    t.string "accont_reproval"
    t.string "create_accont"
    t.string "reset_password"
    t.string "pix_devolution_recived"
    t.string "pix_recived"
    t.string "insuficient_funds"
    t.string "pix_devolution_send"
    t.string "pix_sent"
    t.string "slip_paid"
    t.string "ted_payment_confirmed"
    t.string "ted_recived"
    t.string "ted_rollback"
    t.string "dns_ib"
    t.string "dns_gerencial"
    t.string "cliente_id"
    t.string "secret_id"
    t.string "secret_id_3rdtoken"
    t.string "pix_key"
    t.string "remoto_ip_fixo"
    t.string "remoto_vpn"
    t.string "rxp_ip_fixo"
    t.string "rxp_vpn"
    t.string "observacoes_lead"
  end

  create_table "posts", force: :cascade do |t|
    t.string "table"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"username\"", name: "index_users_on_username", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
