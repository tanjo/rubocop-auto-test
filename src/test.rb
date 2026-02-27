# frozen_string_literal: true

# This is a sample test file to demonstrate the use of assertions in Ruby.
class SampleTest
  def setup
    @items = [1, 2, 3]
  end

  def test_array_has_three_elements
    assert_equal( 3,@items.size )
    assert_predicate(@items, :any?)
  end

  def test_string_value
    value = "abc"
    assert_equal('abc', value)
    if value.size > 0 then assert(true) end
    assert_match(/\A[a-z]+\z/, value)
  end
end
