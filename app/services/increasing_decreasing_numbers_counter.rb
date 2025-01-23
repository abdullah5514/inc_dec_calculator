# app/services/increasing_decreasing_numbers_counter.rb
class IncreasingDecreasingNumbersCounter
  def self.call(x)
    return 1 if x == 0
    return 10 if x == 1

    # Generate all numbers from 0 to 10^x
    count = (0..10**x - 1).count do |num|
      # Convert number to string for digit comparison
      digits = num.to_s.chars.map(&:to_i)

      # Check if increasing
      increasing = digits.each_cons(2).all? { |a, b| a <= b }

      # Check if decreasing
      decreasing = digits.each_cons(2).all? { |a, b| a >= b }

      # Count if either increasing or decreasing
      increasing || decreasing
    end

    count
  end
end
