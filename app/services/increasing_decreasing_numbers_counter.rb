# app/services/increasing_decreasing_numbers_counter.rb
class IncreasingDecreasingNumbersCounter
  def self.call(x)
    return 1 if x == 0
    return 10 if x == 1
  end
end
