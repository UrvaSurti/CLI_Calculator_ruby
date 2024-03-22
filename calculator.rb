# calculator.rb

class Calculator
  def initialize(name)
    @name = name
  end

  def start
    puts "Welcome to #{@name} calculator!"

    loop do
      puts 'Please select an operation: "add", "subtract", "multiply", "divide", or "exit".'
      operation = gets.chomp.downcase

      case operation
      when "add"
        puts "Enter the first number:"
        num1 = gets.chomp.to_f

        puts "Enter the second number:"
        num2 = gets.chomp.to_f
        add(num1, num2)
      when "subtract"
        puts "Enter the first number:"
        num1 = gets.chomp.to_f

        puts "Enter the second number:"
        num2 = gets.chomp.to_f
        subtract(num1, num2)
      when "multiply"
        puts "Enter the first number:"
        num1 = gets.chomp.to_f

        puts "Enter the second number:"
        num2 = gets.chomp.to_f
        multiply(num1, num2)
      when "divide"
        puts "Enter the first number:"
        num1 = gets.chomp.to_f

        puts "Enter the second number:"
        num2 = gets.chomp.to_f
        divide(num1, num2)
      when "exit"
        puts "Thank you #{@name} for using the calculator. Goodbye!"
        break
      else
        puts "Invalid operation. Please try again."
      end
    end
  end

  def add(num1, num2)
    result = num1 + num2
    puts "The result of #{num1} + #{num2} is #{result}."
  end


  def subtract(num1, num2)
    result = num1 - num2
    puts "The result of #{num1} - #{num2} is #{result}."
  end

  def multiply(num1, num2)
    result = num1 * num2
    puts "The result of #{num1} * #{num2} is #{result}."
  end

  def divide(num1, num2)
    result = num1 / num2
    puts "The result of #{num1} / #{num2} is #{result}."
  end
end
