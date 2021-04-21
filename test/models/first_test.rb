require "test_helper"

class FirstTest < ActiveSupport::TestCase
  test "Meu primeiro teste automatizado" do
    variavel = "Rafael"

      assert_equal "Rafael", variavel
  end
end

