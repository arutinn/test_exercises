def sort_numbers(numbers)
  zeros = []
  numbers.each { |n| zeros << n if n.chars.map(&:to_i).all?(&:zero?) }
  arr = numbers - zeros

  zeros.sort.reverse + arr.map(&:to_i).sort.map(&:to_s)
end
