def generate_travel_destinations
  destinations = %w(LPZ CBBA TJA SCR STA PND BEN ORU POT)
  destinations_file = File.open('destinations.txt', 'w+')
  destinations_file.truncate (0)
  destinations_file.puts "|USER\t|PASSWORD\t|TRAVEL_DATE\t|DESTINATION|"
  100.times do |i|
    user = "USER_#{format('%02d', i)}"
    pass = "PASS_#{format('%02d', i)}"
    date = Time.at(rand * Time.now.to_i).strftime('%m/%d/%Y')
    destinations_file.puts "|#{user}\t|#{pass}\t|#{date}\t|#{destinations.sample}\t|"
  end
  destinations_file.close
end

generate_travel_destinations
