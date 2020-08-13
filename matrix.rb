def debug(msg)
  puts msg
end


matrix = [
    1..5,
    6..10,
    7..15,
    8..20,
    9..25,
]

matrix.each do |row|
  row.each do |n|
    debug(n)
  end
end
