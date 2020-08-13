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
    puts "Oops! Snake in #{current_position}, you go to 3"
    current_position = 3
  elsif current_position == 13
    puts "Oops! Snake in #{current_position}, you go to 8"
    current_position = 8
  elsif current_position == 20
    puts "Oops! Snake in #{current_position}, you go to 11"
    current_position = 11
  elsif current_position == 24
    puts "Oops! Snake in #{current_position}, you go to 17"
    current_position = 17
    # helpers
  elsif current_position == 1
    puts "Nice! Ladder in #{current_position}, you go to 9"
    current_position = 9
  elsif current_position == 3
    puts "Nice! Ladder in #{current_position}, you go to 7"
    current_position = 7
  elsif current_position == 6
    puts "Nice! Ladder in #{current_position}, you go to 17"
    current_position = 17
  elsif current_position == 12
    puts "Nice! Ladder in #{current_position}, you go to 18"
    current_position = 18
  elsif current_position == 19
    puts "Nice! Ladder in #{current_position}, you go to 23"
    current_position = 23
  end

  puts "Now position is #{current_position}"
end