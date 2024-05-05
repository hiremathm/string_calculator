class StringCalculator

  def initialize
  end

  def int_add(string_of_numbers)
    raise 'only accepts a string' unless string_of_numbers.is_a?(String)
    return 0 if string_of_numbers.empty?
  end
end