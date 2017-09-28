
# Include a different tag for each scenario and create a before  hook to
# print "I am running an outline scenario" for the first case
# and print "I am running a normal scenario" for the second case
#  create and after hook print "I finished running the outline scenario" for the first case
# and print "I finished running a normal scenario" for the second case
#  Also add a Message “CUSTOMER SEARCH TEST” when both tags are executed and print “SEARCHIN…..”
# only when scenario outline is executed





  Before('@firstCase') do
    puts "I am running an outline scenario"
  end

  Before('@secondCase') do
    puts "I finished running a normal scenario"
  end

  Before('@firstCase','@secondCase') do
    puts "CUSTOMER SEARCH TEST"
  end

  Before('@firstCase','~@secondCase') do
    puts "SEARCHIN….."
  end

  After('@firstCase') do
    puts "I finished running the outline scenario"
  end

  After('@secondCase') do
    puts "I finished running a normal scenario"
  end

