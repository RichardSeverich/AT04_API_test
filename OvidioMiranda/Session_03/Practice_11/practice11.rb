=begin
Session 3 - Practice 11
Assume that you need to perform load testing for an application.
You need to create a list similar to :
|USER      |PASSWORD|TRAVEL_DATE|DESTINATION|
|USER_01|PASS_02      |04/26/2016       |CBBA|
You should create the same list for 100 user using random dates and following the patter user_01, user_02, etc etc.
Destination could be any city of Bolivia.
=end

class Practice11
  attr_reader :file_name_with_extension
  NUMBER_USERS = 100

  def create_file

    puts '##### Enter the following file information #####'
    print 'File name: '
    file_name = gets.chomp
    print 'Extension: '
    extension = gets.chomp
    @file_name_with_extension="#{file_name}.#{extension}"
    file = File.open(@file_name_with_extension, 'w+')
    file.truncate 0
    file.write(format('|%-7s|%-10s|%-13s|%-13s|', 'USER', 'PASSWORD', 'TRAVEL_DATE', 'DESTINATION')+"\n")
    NUMBER_USERS.times do |number|
      file.write(format('|%-7s|%-10s|%-13s|%-13s|', "USER_#{number}", "PASS_#{number}", random_travel_date, random_destination)+"\n")
    end
    puts '##### File created with 100 users at random #####'
    file.close
  end

  def random_travel_date
    year = Time.now.year - rand(1)
    month = rand(12)
    day = rand(31)
    "#{month}/#{day}/#{year}"
  end

  def random_destination
    destination = %w[LP OR PT CBBA SC BN PA TJ CH]
    destination[rand(destination.length)]
  end

end

sample = Practice11.new
sample.create_file



