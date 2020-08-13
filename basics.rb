def debug(msg)
  # puts msg
end

def play_game
  roll_sequence = []

  current_position = 1
  target_position = 25

  roll = 0
  while current_position < target_position
    # throwing dice
    roll = rand(1..6)
    debug("throw : #{roll}")
    roll_sequence.push(roll)

    # adding to current position
    current_position += roll

    # obstacles
    case current_position
    when 8
      debug("Oops! Snake in #{current_position}, you go to 3")
      current_position = 3
    when 13
      debug("Oops! Snake in #{current_position}, you go to 8")
      current_position = 8
    when 20
      debug("Oops! Snake in #{current_position}, you go to 11")
      current_position = 11
    when 24
      debug("Oops! Snake in #{current_position}, you go to 17")
      current_position = 17
      # ladders
    when 1
      debug("Oops! Snake in #{current_position}, you go to 9")
      current_position = 9
    when 8
      debug("Oops! Snake in #{current_position}, you go to 3")
      current_position = 3
    when current_position == 3
      debug("Nice! Ladder in #{current_position}, you go to 7")
      current_position = 7
    when current_position == 6
      debug("Nice! Ladder in #{current_position}, you go to 17")
      current_position = 17
    when current_position == 12
      debug("Nice! Ladder in #{current_position}, you go to 18")
      current_position = 18
    when current_position == 19
      debug("Nice! Ladder in #{current_position}, you go to 23")
      current_position = 23
    else
      # Nothing special here
    end

    debug("Now position is #{current_position}")
  end

  debug("Finished in #{roll_sequence.length}, with the sequence: #{roll_sequence.join('-')}")

  roll_sequence
end

best_sequence = nil
amount_of_tries = 100000

(1..amount_of_tries).each { |i|
  sequence = play_game

  if best_sequence.nil?
    best_sequence = sequence
  elsif best_sequence.length > sequence.length
    best_sequence = sequence
  end
}

puts("Best sequence was #{best_sequence.length} rolls, with the sequence: #{best_sequence.join('-')}")