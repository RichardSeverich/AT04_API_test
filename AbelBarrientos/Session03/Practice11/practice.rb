require 'faker'
def create_list_with_faker
  puts "|USER\t|PASSWORD\t|TRAVEL_DATE\t|DESTINATION|"
  100.times do
    puts "|#{Faker::Name.first_name}\t|#{Faker::DragonBall.character}\t|#{Faker::Date.forward(100)}\t|#{Faker::Address.country}|"
  end
end

def create_list
  puts "|USER\t|PASSWORD\t|TRAVEL_DATE\t|DESTINATION|"
  city = ["La Paz", "Oruro", "Potosi", "Cochabamba", "Sucre", "Tarija", "Beni", "Pando", "Santa Cruz"]
  100.times do |index|
    puts "|USER_%.2i\t|PASS_%.2i\t|#{Time.at(rand * Time.now.to_i).strftime("%m/%d/%Y")}\t|#{city[rand(city.length)]}|" % [index, index]
  end
end

create_list_with_faker
create_list
