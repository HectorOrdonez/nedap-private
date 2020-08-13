def debug(msg)
  # puts msg
end

def play_game
  specials = {
      # snakes
      8 => 3,
      13 => 8,
      20 => 11,
      24 => 17,
      # ladders
      1 => 9,
      3 => 7,
      6 => 17,
      12 => 18,
      19 => 23
  }
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
    if specials.has_key? current_position
      new_position = specials[current_position]
      debug("Special: from #{current_position}, to #{new_position}")
      current_position = new_position
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