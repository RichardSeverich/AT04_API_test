require 'faker'
class Practice

  @@user_hash = {}
  def create_hash
    # rng = Random.new
    # (rng.rand 20..50).times do
    50.times do
      # user_id = rng.rand 100
      user_id = Faker::Number.unique.between(1, 100)
      user_name = Faker::Name.unique.first_name.downcase
      until /\A[a-z]{1,8}\z/ === user_name do
        user_name = Faker::Name.first_name.downcase
      end
      @@user_hash.store user_id, user_name
    end
    p @@user_hash
  end

  def find_by_key
    print "Insert only 1 number value: "
    number = gets.chomp
    until /\A\d\z/ === number
      puts "Invalid value try again: "
      number = gets.chomp
    end
    regexp = /^#{number}/
    new_has =  @@user_hash.select {|key, value| regexp === key.to_s}
    p new_has.keys
  end

  def find_by_value
    print "Insert only one letter value: "
    letter = gets.chomp
    until /\A[a-z]\z/ === letter
      puts "Invalid value try again: "
      letter = gets.chomp
    end
    regexp = /^#{letter}/
    new_has =  @@user_hash.select {|key, value| regexp === value.to_s}
    p new_has.values
  end

  def users_group
    array = Array.new
    @@user_hash.each_key { |key|
      array.push "User Key #{key} belong to Group 1" if 0 < key && key <= 25
      array.push "User Key #{key} belong to Group 2" if 25 < key && key <= 50
      array.push "User Key #{key} belong to Group 3" if 50 < key && key <= 75
      array.push "User Key #{key} belong to Group 4" if 75 < key && key <= 100
    }
    array
  end

  def print_array array
    p array
  end
end

practice = Practice.new
practice.create_hash
practice.find_by_key
practice.find_by_value
array = practice.users_group
practice.print_array array
