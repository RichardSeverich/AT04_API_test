class HashMatch
  def register
    @hash = Hash.new
    _flag = false
    puts 'Insert the quantity of Users to register'
    _number = gets.chomp.to_i
    _number.times do |index|

      while _flag == false
        puts 'Insert the UserID'
        _user_id = gets.chomp
        if (/[1-100]+/ === _user_id)
          puts ' Insert the User Name'
          _user_name = gets.chomp
          if (/[a-z]+/ === _user_name) && _user_name.length <= 8
            @hash.store(_user_id, _user_name)
            _flag = true
          else
            puts 'You insert a wrong User ID or User Name'
          end
        end
      end
    end
  end

  def request_id
    _similarities_id = Array.new
    puts 'Insert the User ID, for look similarities'
    _id = gets.chomp
    @hash.inspect
    _similarities_id = @hash.each {|id, name| /#{_id}/ === id}
    puts "The array of coincidences is: #{_similarities_id}"
  end

  def request_name
    _similarities_name = Hash.new
    _flag = false
    while _flag == false
    puts 'Insert ONE character, for look similarities in the User Name'
    _name = gets.chomp
      if (_name.length == 1)
        _similarities_name = @hash.each {|id, name| /#{_name}/ === name}
        _flag = true
      else
        puts 'PLEASE just insert ONE character'
      end
    end
    puts "Quantity of coincidences are: #{_similarities_name.length}"
    puts "The array of coincidences is #{_similarities_name}"
  end
  def between
    _first = Array.new
    _second = Array.new
    _third = Array.new
    _fourth = Array.new
    _first = @hash.each{|id, name| /1-25/ === id}
    _second = @hash.each {|id, name| /26-50/ === id}
    _third = @hash.each{|id, name| /51-75/ === id}
    _fourth = @hash.each{|id, name| /76-100/ === id}
    puts "In Group 1 are: #{_first}"
    puts "In Group 2 are: #{_second}"
    puts "In Group 3 are: #{_third}"
    puts "In Group 4 are: #{_fourth}"
  end
end
hm = HashMatch.new
hm.register
hm.request_id
hm.request_name
hm.between