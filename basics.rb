current_position = 1
target_position = 25

roll = 0
while current_position < target_position
  # throwing dice
  roll = rand(1..6)
  puts "throw : #{roll}"

  # adding to current position
  current_position += roll

  # obstacles
  if current_position == 8
    puts "Oops! Snake in 8, you go to 3"
    current_position = 3
  elsif current_position == 13
    puts "Oops! Snake in 13, you go to 8"
    current_position = 8
  elsif current_position == 20
    puts "Oops! Snake in 20, you go to 11"
    current_position = 11
  end

  puts "Now position is #{current_position}"
end