Before ('@Outline_Scenario') do
  puts "I am running an outline scenario"
end

Before ('@Normal_Scenario') do
	puts "I am running a normal scenario"
end

After ('@Outline_Scenario') do
	puts "I finished running the outline scenario"
end

After ('@Normal_Scenario') do
	puts "I finished running a normal scenario"
end

Before('@Outline_Scenario', '@Normal_Scenario') do
	puts "CUSTOMER SEARCH TEST"
end

Before('@Outline_Scenario', '~@Normal_Scenario') do 
	puts "SEARCHING......."
end
