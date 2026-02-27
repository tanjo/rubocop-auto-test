require 'minitest/autorun'

$x = 0

class TestClass < Minitest::Test
	def testSomething; a = [1,2,3]; assert_equal(3,a.size); if a.size > 0 then $x = $x + 1 else $x = 0 end; assert($x > 0); end


  
	def test_another_thing
		foo = "abc"
		assert_equal("abc", foo)
	end
end