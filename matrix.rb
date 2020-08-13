def debug(msg)
  puts msg
end

# direction: [r]ight, [d]own, [l]eft, [u]p
def iterate(matrix, col, row, direction, numbers_collected)
  debug(matrix[col][row])

  numbers_collected.push(matrix[col][row])

  case direction
  when 'r'
    if matrix[col][row + 1].nil? == false
      # We go right, so we keep the col
      iterate(matrix, col, row + 1, direction, numbers_collected)
    elsif matrix[col + 1].nil? == false
      # We go down, so we keep the row
      if matrix[col + 1][row].nil?
        debug("col #{col} and row #{row} is nil")
      else
        iterate(matrix, col + 1, row, 'd', numbers_collected)
      end
    end
  when 'd'
    debug('Going down down down')
  else
    puts "This should not happen"
  end

  # if matrix[col][row + 1].nil? == false
  #   iterate(matrix, col, row + 1, direction, numbers_collected)
  # elsif matrix[col + 1].nil? == false
  #   iterate(matrix, col + 1, 0, direction, numbers_collected)
  # end

  numbers_collected
end

matrix = [
    # [1..5], shouldn't this work?
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25],
]

numbers_collected = iterate(matrix, 0, 0, 'r', [])

# Output the result
numbers_collected.each do |n|
  puts(n)
end
