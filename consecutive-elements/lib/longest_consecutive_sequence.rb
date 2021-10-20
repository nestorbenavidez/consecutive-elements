class LongestConsecutiveSequence

  def initialize(array_of_numbers)
    @numbers = array_of_numbers
    raise ArgumentError if array_of_numbers.empty?
  end

  def run
    sorted_numbers = @numbers.uniq.sort
    longest_secuence, count = 1
    sorted_numbers.each_with_index do |num,i |
      (num.to_i - 1 == sorted_numbers[i - 1].to_i) ? count += 1 : count = 1
      longest_secuence = count if count > longest_secuence
    end
    longest_secuence
  end

end
