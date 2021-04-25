require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "Usuario fez cadastro com dados validos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome", with: "Joao fafael De Luca"
    fill_in "E-mail", with: "joaodeluca@rafaeldeluca.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirmação da senha", with: "minhasenha"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  end

  test "usuário faz cadastro com dados invalidos" do
    visit "/"
    click_on "Cadastre-se"
    click_on "Cadastrar"

    assert_text "Erro ao salvar"
  end
end

