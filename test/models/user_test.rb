require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "nome é obrigatório" do
    user = User.new(name: nil)

    user.save

    assert user.errors[:name].any?
  end

  test "email é obrigatorio e com formato de email valido" do
    user = User.new(email: nil)
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "inválido")
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "valido@examplo.com")
    user.save

    refute user.errors[:email].any?
  end

  test "email é tem que ser unico" do
    user = User.create!(name: "Maria", email: "maria@example.com", password: "secret", password_confirmation: "secret")

    other_user = User.create(email: "rafael@example.com")

    assert other_user.errors[:email].any?
  end
end
