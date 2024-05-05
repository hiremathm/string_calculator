class StringCalculator

  def initialize
  end

  def int_add(string_of_numbers)
    raise 'only accepts a string' unless string_of_numbers.is_a?(String)
    return 0 if string_of_numbers.empty?
    string_array = string_of_numbers.split(/[^0-9-]+/)
    integer_array = string_array.map(&:to_i)
    raise "cannot accept negatives - #{check_for_negatives(integer_array)}" if check_for_negatives(integer_array)
  end

  private
  def check_for_negatives(integer_array)
     negatives_array = integer_array.select{ |i| i<0 }
    if negatives_array.length > 0
      return negatives_string = negatives_array.join(",")
    else
      return false
    end
  end
end