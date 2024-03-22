# calculator.rb

class Calculator
  def start
    puts "Welcome to the calculator!"

    loop do
      puts 'Please select an operation: "add", "subtract", "multiply", "divide", or "exit".'
      operation = gets.chomp.downcase

      case operation
      when "add"
        get_numbers(:+)
      when "subtract"
        get_numbers(:-)
      when "multiply"
        get_numbers(:*)
      when "divide"
        get_numbers(:/)
      when "exit"
        puts "Thank you for using the calculator. Goodbye!"
        break
      else
        puts "Invalid operation. Please try again."
      end
    end
  end

  private

  def get_numbers(operation)
    puts "Enter the first number:"
    num1 = gets.chomp.to_f

    puts "Enter the second number:"
    num2 = gets.chomp.to_f

    result = num1.send(operation, num2)
    puts "The result of #{num1} #{operation} #{num2} is #{result}."
  end
end
