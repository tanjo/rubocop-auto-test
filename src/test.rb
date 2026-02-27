# frozen_string_literal: true

require 'minitest/autorun'

class TestClass < Minitest::Test
  def setup
    @items = [1, 2, 3]
  end

  def test_array_has_three_elements
    assert_equal(3, @items.size)
    assert_predicate(@items, :any?)
  end

  def test_string_value
    value = 'abc'
    assert_equal('abc', value)
    assert_match(/\A[a-z]+\z/, value)
  end
end
