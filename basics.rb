current_position = 1
target_position = 25

roll = 0
while current_position < target_position
  # throwing dice
  roll = rand(1..6)

  # adding to current position
  current_position += roll

  puts "throw : #{roll} and now position is #{current_position}"
end