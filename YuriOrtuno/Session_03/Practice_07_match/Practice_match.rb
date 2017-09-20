class Prac_mathc

  def create_list_user
    @list_user = Hash.new
    size = gets.chomp.to_i
    size.times do
      ban_id = false
      ban_name = false
      puts "input user id: "
      user_id = gets.chomp
      ban_id = true if /^[0-9]{1,2}$/.match(user_id) || /100/ =~ user_id
      puts "input user name: "
      name = gets.chomp
      ban_name = true if /^[a-z]{1,8}$/.match(name)
      @list_user.store(name, user_id) if ban_name && ban_id
    end
    p @list_user
  end

end


asd = Prac_mathc.new
asd.create_list_user

