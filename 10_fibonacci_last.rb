def fibonacci_last(number)
  fibonacci_array = []
  index = 0
  counter = 1
  loop do
    if fibonacci_array.size < 2
      fibonacci_array << counter
    else
      fibonacci_array << fibonacci_array[index - 1] + fibonacci_array[index - 2]
    end
    index += 1
    break if index == number
  end
  fibonacci_number_str = fibonacci_array[number - 1].to_s
  fibonacci_number_str[fibonacci_number_str.length - 1].to_i
  # fibonacci_array
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
