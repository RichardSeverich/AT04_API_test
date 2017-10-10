Given(/^a board like this:$/) do |table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  @board=table.raw
end

When(/^player \$(x|y) plays in row (\d+), column (\d+)$/) do |marc,row, col|
  puts @board
  row, col = row.to_i, col.to_i
  @board[row][col]=marc
end


Then(/^the board should look like this:$/) do |table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  table.diff!(@board)
end

