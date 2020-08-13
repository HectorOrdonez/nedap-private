def debug(msg)
  # puts msg
end

def iterate(matrix, col, row, numbers_collected)
  numbers_collected.push(matrix[col][row])
  debug(matrix[col][row])

  # next row
  if matrix[col][row + 1].nil? == false
    iterate(matrix, col, row + 1, numbers_collected)
  elsif matrix[col + 1].nil? == false
    iterate(matrix, col + 1, 0, numbers_collected)
  end

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

numbers_collected = iterate(matrix, 0, 0, [])

# Output the result
numbers_collected.each do |n|
  puts(n)
end
