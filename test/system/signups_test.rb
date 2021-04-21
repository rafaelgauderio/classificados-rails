require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "Usuario fez cadastro com dados validos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome", with: "Rafael De Luca"
    fill_in "E-mail", with: "rafael@rafaeldeluca.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirme sua senha", with: "minhasenha"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  end
end

