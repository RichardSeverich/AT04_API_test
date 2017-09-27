Before('@outline') do
  puts "I am running before Outline scenario"
  puts "SEARCHIN…"
end

Before('@normal') do
  puts "I am running before Normal scenario"
end

After('@outline') do
  puts "I am running after Outline scenario"
end

After('@outline') do
  puts "I am running after Outline scenario"
end

Before('@outline', '@normal') do
  puts "CUSTOMER SEARCH TEST"
end
