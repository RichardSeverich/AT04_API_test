#3. Include a different tag for each scenario and
# create a before  hook to
# print "I am running an outline scenario" for the first case
# and
# print "I am running a normal scenario" for the second case
Before ('@scenario_outline') do
  puts 'I am running an outline scenario'
end
Before ('@scenario_normal') do
  puts 'I am running a normal scenario'
end

#create and after hook
#print "I finished running the outline scenario" for the first case
#and
#print "I finished running a normal scenario" for the second case
After ('@scenario_outline') do
  puts 'I finished running the outline scenario'
end
After ('@scenario_normal') do
  puts 'I finished running a normal scenario'
end

#Also add a Message “CUSTOMER SEARCH TEST” when both tags are executed
Before('@scenario_outline', '@scenario_normal') {
  puts 'CUSTOMER SEARCH TEST'
}
#and
# print “SEARCHIN…..” only when scenario outline is executed
Before('@scenario_outline', '~@scenario_normal') {
  puts 'SEARCHING.......'
}
