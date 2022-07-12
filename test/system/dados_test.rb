require "application_system_test_case"

class DadosTest < ApplicationSystemTestCase
  setup do
    @dado = dados(:one)
  end

  test "visiting the index" do
    visit dados_url
    assert_selector "h1", text: "Dados"
  end

  test "creating a Dado" do
    visit dados_url
    click_on "New Dado"

    fill_in "2", with: @dado.2
    fill_in "Bairro", with: @dado.bairro
    fill_in "Cep", with: @dado.cep
    fill_in "Cidade", with: @dado.cidade
    fill_in "Cnpj", with: @dado.cnpj
    fill_in "Complemento", with: @dado.complemento
    fill_in "Email", with: @dado.email
    fill_in "Endereco", with: @dado.endereco
    fill_in "Estado", with: @dado.estado
    fill_in "Fone", with: @dado.fone
    fill_in "Fone1", with: @dado.fone1
    fill_in "Homepage", with: @dado.homepage
    fill_in "Nomef", with: @dado.nomef
    fill_in "Numero", with: @dado.numero
    fill_in "Observacoes", with: @dado.observacoes
    fill_in "Ponto", with: @dado.ponto
    fill_in "Razao", with: @dado.razao
    click_on "Create Dado"

    assert_text "Dado was successfully created"
    click_on "Back"
  end

  test "updating a Dado" do
    visit dados_url
    click_on "Edit", match: :first

    fill_in "2", with: @dado.2
    fill_in "Bairro", with: @dado.bairro
    fill_in "Cep", with: @dado.cep
    fill_in "Cidade", with: @dado.cidade
    fill_in "Cnpj", with: @dado.cnpj
    fill_in "Complemento", with: @dado.complemento
    fill_in "Email", with: @dado.email
    fill_in "Endereco", with: @dado.endereco
    fill_in "Estado", with: @dado.estado
    fill_in "Fone", with: @dado.fone
    fill_in "Fone1", with: @dado.fone1
    fill_in "Homepage", with: @dado.homepage
    fill_in "Nomef", with: @dado.nomef
    fill_in "Numero", with: @dado.numero
    fill_in "Observacoes", with: @dado.observacoes
    fill_in "Ponto", with: @dado.ponto
    fill_in "Razao", with: @dado.razao
    click_on "Update Dado"

    assert_text "Dado was successfully updated"
    click_on "Back"
  end

  test "destroying a Dado" do
    visit dados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dado was successfully destroyed"
  end
end
