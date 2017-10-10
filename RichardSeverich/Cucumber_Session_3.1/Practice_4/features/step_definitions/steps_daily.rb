Given(/^I installed "([^"]*)"$/) do |technology|
  puts "I intalled #{technology}"
end

When(/^I start the following tasks:$/) do |table|
  @myTable = table.raw
   @myTable.each_with_index do |array,row|
      array.each_with_index do |value,col|
        puts "row is : #{row} and col is : #{col}"
        puts "Values is: #{@myTable[row][col]}"
      end
   end
end

When(/^I mark as finiched the following tasks$/) do |table|
  @myTableModify = table.raw
  @myTable.each_with_index do |array,row|
      array.each_with_index do |value,col|
         @myTableModify.each do |arrayModify|
            arrayModify.each do |valueModify|
              if(valueModify==value && col==0)
                @mycol= col.to_i+1
                @myTable[row][@mycol] = @myTableModify[row][@mycol]
              end
            end
          end
       end
   end
end

Then(/^I should see the following table:$/) do |table|
  puts "THIS IS A TABLE PRINTS"
  puts @myTable
  puts "THIS IS A TABLE PRINTS WITH EACH"
  @myTable.each do |array|
      array.each do |value|
        puts "The value is : #{value}"
      end
  end
  table.diff!(@myTable)
end
