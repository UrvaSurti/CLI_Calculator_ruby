# test_calculator.rb

require 'minitest/autorun'
require_relative '../calculator'

class TestCalculator < Minitest::Test 
  def setup
    @calculator = Calculator.new("Test")
  end

  def test_addition
    
    assert_output("The result of 2.0 + 2.0 is 4.0.\n") { @calculator.add(2.0, 2.0) }
  end

  def test_subtraction
    assert_output("The result of 4.0 - 2.0 is 2.0.\n") { @calculator.subtract(4.0, 2.0) }
  end

  def test_multiplication
    assert_output("The result of 2.0 * 5.0 is 10.0.\n") { @calculator.multiply(2.0, 5.0) }
  end

  def test_division
    assert_output("The result of 6.0 / 3.0 is 2.0.\n") { @calculator.divide(6.0, 3.0) }
  end
end
