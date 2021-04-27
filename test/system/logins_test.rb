require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
 def setup
  user = FactoryBot.create(:user, password: "password", password_confirmation: "password")
 end

  test "login com credenciar válidas" do  

  visit root_path
  click_on "Entrar"
  
  fill_in "E-mail", with: user.email
  fill_in "Senha", with: "password"

  click_on "Entrar"

    assert_text "Bem vindo Rafael De Luca!"
  end

  test "login com credenciais invalidas" do
    login_as(@user, "invalidpassword")

    assert_equal new_session_path, current_path
    assert_text "E-mail ou senha inválidos"
  end
end
