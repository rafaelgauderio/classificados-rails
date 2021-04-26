require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
 test "login com credenciar válidas" do
    user = FactoryBot.create(:user, password: "password", password_confirmation: "password")
  

  visit root_path
  click_on "Entrar"
  
  fill_in "E-mail", with: user.email
  fill_in "Senha", with: "password"

  click_on "Entrar"

    assert_text "Bem vindo Rafael De Luca!"
  end
end
