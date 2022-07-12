require "test_helper"

class DadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dado = dados(:one)
  end

  test "should get index" do
    get dados_url
    assert_response :success
  end

  test "should get new" do
    get new_dado_url
    assert_response :success
  end

  test "should create dado" do
    assert_difference('Dado.count') do
      post dados_url, params: { dado: { 2: @dado.2, bairro: @dado.bairro, cep: @dado.cep, cidade: @dado.cidade, cnpj: @dado.cnpj, complemento: @dado.complemento, email: @dado.email, endereco: @dado.endereco, estado: @dado.estado, fone: @dado.fone, fone1: @dado.fone1, homepage: @dado.homepage, nomef: @dado.nomef, numero: @dado.numero, observacoes: @dado.observacoes, ponto: @dado.ponto, razao: @dado.razao } }
    end

    assert_redirected_to dado_url(Dado.last)
  end

  test "should show dado" do
    get dado_url(@dado)
    assert_response :success
  end

  test "should get edit" do
    get edit_dado_url(@dado)
    assert_response :success
  end

  test "should update dado" do
    patch dado_url(@dado), params: { dado: { 2: @dado.2, bairro: @dado.bairro, cep: @dado.cep, cidade: @dado.cidade, cnpj: @dado.cnpj, complemento: @dado.complemento, email: @dado.email, endereco: @dado.endereco, estado: @dado.estado, fone: @dado.fone, fone1: @dado.fone1, homepage: @dado.homepage, nomef: @dado.nomef, numero: @dado.numero, observacoes: @dado.observacoes, ponto: @dado.ponto, razao: @dado.razao } }
    assert_redirected_to dado_url(@dado)
  end

  test "should destroy dado" do
    assert_difference('Dado.count', -1) do
      delete dado_url(@dado)
    end

    assert_redirected_to dados_url
  end
end
