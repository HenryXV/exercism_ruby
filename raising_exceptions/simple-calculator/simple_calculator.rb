class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if !first_operand.is_a?(Numeric) || !second_operand.is_a?(Numeric)
      raise ArgumentError.new("ArgumentError")
    end

    case operation
    when "+"
      total = first_operand + second_operand
    when "/"
      total = first_operand / second_operand
    when "*"
      total = first_operand * second_operand
    else
      raise UnsupportedOperation
    end

    "#{first_operand} #{operation} #{second_operand} = #{total}"

  rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end

