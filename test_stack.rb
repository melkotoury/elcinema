require "minitest/autorun"
require_relative 'stack'


class TestStack < Minitest::Test
  def test_push_pop
    stack = Stack.new

    stack.push 3

    assert_equal 3, stack.pop
  end

  def test_multi_push_pop
    stack = Stack.new

    stack.push 3
    stack.push 5

    assert_equal 5, stack.pop
    assert_equal 3, stack.pop
  end

  def test_empty
    stack = Stack.new
    assert stack.empty?

    stack.push 3
    refute stack.empty?

    stack.pop
    assert stack.empty?
  end
end