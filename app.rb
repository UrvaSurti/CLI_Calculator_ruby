# app.rb

require_relative "calculator"


puts "Enter the name of the calculator:"
calculator_name = gets.chomp

calculator = Calculator.new(calculator_name)


calculator.start
