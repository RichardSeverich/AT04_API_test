
  Before('@some') do
    puts "I am running an outline scenario"
  end

  Before('@any') do
    puts "I finished running a normal scenario"
  end


