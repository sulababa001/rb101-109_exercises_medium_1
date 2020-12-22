require 'pry'

def lights(number)
  nums = (1..number).to_a
  switches = []
  iterator = 1
  index = 0
  holding = []

  loop do
    switches << nums[index]
    index += 1
    break if index == number
  end

  pass = 2

  loop do
    iterator = pass 
    loop do
      switches << iterator
      iterator += pass
      break if iterator > number  
    end
      pass += 1
    break if pass > number
  end

  switches.sort!

  counter = 0
  loop do
    holding << switches[counter].to_s
    counter += 1
    break if counter == switches.size
  end

  new_arr = []
  counter = 1

  loop do
    if holding.count(counter.to_s) % 2 == 1
      new_arr << counter
    end
    counter += 1
    break if counter == holding.size
  end
  new_arr
end

p lights(5)
p lights(10)
