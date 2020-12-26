
def fibonacci(number)
  fib_arr = []
  index = 0
  counter = 1

  loop do
    if fib_arr.size < 2
      fib_arr << counter
    else
      fib_arr << (fib_arr[index - 1]) + (fib_arr[index - 2])
    end
      index += 1
    break if index == number
  end
  fib_arr[index - 1]
end

p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(6) == 8

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) => 4202692702.....8285979669707537501
