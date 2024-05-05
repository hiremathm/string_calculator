class StringCalculator
  def int_add(input)
    raise 'only accepts a string' unless input.is_a?(String)
    return 0 if input.empty?
    numbers = input.scan(/[0-9-]+/).map(&:to_i)
    if negatives = check_for_negatives(numbers)
      raise "cannot accept negatives - #{negatives}"
    end
    numbers.inject(0){|sum,x| x <= 1000? sum + x : sum }
  end

  private
  def check_for_negatives(numbers)
    negatives = numbers.select{ |i| i < 0 }
    # Ruby return the last statement which is the negatives string, or nil, that is treated as false
    negatives.join(",") if negatives.length > 0
  end
end