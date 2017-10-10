Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When(/^"([^"]*)" plays in row (\d+), column (\d+)$/) do |user, row, col|
     puts @board
  	row, col = row.to_i, col.to_i
    if("player x"==user)
    @board[row][col] = 'x'
	else
	@board[row][col] = 'y'
	end
end

Then(/^the board should look like this:$/) do |table|
  table.diff!(@board)
end
