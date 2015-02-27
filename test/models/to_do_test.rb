require 'test_helper'

class ToDoTest < ActiveSupport::TestCase
  setup do
  end

  test "the truth" do
    assert true
  end
  
  test "data exists" do
    assert ToDo.count > 0
  end

  test "who is not my lover" do
    assert_equal "Billie Jean is not my lover", to_dos(:one).text
  end

  test "database changes upon create" do
    assert_difference "ToDo.count", 1 do ToDo.create(text: "Blah")
    end
  end
end
