def generate_date
  Time.at(rand(Time.now.to_i))
end

def generate_departaments
  departaments = ["BNI", "CHQ", "CBA", "LPZ", "ORU", "PND", "PSI", "SCZ", "TJA"]
  departaments[rand(departaments.length)]
end


def generate_string
  Array.new(10).map {97.+(rand(25)).chr}.join
end

list = Array.new
i=1
puts "input size of the list: "
size = gets.chomp.to_i
size.times do
  name = generate_string+"_"+i.to_s
  pass = generate_string+"_"+i.to_s
  i.to_i
  i += 1
  date = generate_date
  destine = generate_departaments
  list.push("#{name} #{pass} #{date} #{destine}")
end

list.each {|value| puts value}