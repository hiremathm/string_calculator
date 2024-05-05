class StringCalculator

  def initialize
  end

  def int_add(string_of_numbers)
    raise 'only accepts a string' unless string_of_numbers.is_a?(String)
  end
end