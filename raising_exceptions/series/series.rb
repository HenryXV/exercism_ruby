class Series
  def initialize(number)
    @number = number
  end

  def slices(n)
    if n > @number.length
      raise ArgumentError
    end

    range_to_slice = [0,n]
    sub_strs = []
    until range_to_slice[1] == @number.length
        sub_strs.push(@number[range_to_slice[0]...range_to_slice[1]])
        range_to_slice[0] += 1
        range_to_slice[1] += 1
    end
    sub_strs
  end
end

puts Series.new('982347').slices(3)