require_relative "./module_convert"
require 'singleton'
class Registration
	include Convert
	include Singleton 
	def set_user
		flag = false
		until flag 
			puts "ENTER USERNAME NO MORE THAT 11 CHARACTERS"
			@user_name = gets.chomp
			if(/(^[a-z0-9]{1,11}$)/ =~ @user_name)
			flag = true
			end
		end
		
		flag = false
		until flag 
			puts "ENTER ID"
			@user_id = gets.chomp
			if(/(^[0-9]{1,2}$)/ =~ @user_id)
			flag = true
			end
		end
	end

	def set_amount
		@MyHashUsers = Hash.new
		amount = 0
		until amount.to_i >= 3 && amount.to_i <= 15
		puts "ENTER AMOUNT OF USERS DO YOU NEED NO MORE THATN 15 BUT NOT LESS OF 3"
		amount = gets.chomp
		end
		number = amount.to_i
		until number == 0
			set_user
			@MyHashUsers.store @user_id, @user_name
			number -=1
		end
		
	end

	def print_users
		@MyHashUsers.each do |(key, value)|
			puts "***********  USERS #{key}  ***********"
			puts "USER_NAME : #{value} "
		end
	end

	def set_logger(content)
		@file_example = File.open('execution.log', 'a')
		@file_example.write(content+"\n")
		@file_example.close
	end

	def print_logger
		@file_example = File.open('execution.log')
		print @file_example.read
		@file_example.close
	end

	def print_user_doesnt_calcularion
		@file_example = File.open('execution.log')
		logger = @file_example.read()
		@MyHashUsers.each do |(key, value)|
			if(logger.to_s.include?(value.to_s) && !logger.to_s.include?(key.to_s))
			else	
				puts "USER_ID: #{key}"
				puts "USER_NAME: #{value}"
			end
		end
		@file_example.close

	end

	def users_case()
		@MyHashUsers.each do |(key, value)|
			flag = false
			until flag 
				puts "YOU ARE WITH THE USER #{value} ID: #{key}"
				puts "SELECT TO OPTION"
				puts "1. SHOW USERS"
				puts "2. CONVERT MILLIMETERS TO CENTIMETERS"
				puts "3. CONVERT CENTIMETERS TO METTERS"
				puts "4. CONVERT METTERS TO KILOMETERS"
				puts "5. EXIT"
				op = gets.chomp
				sel = case op
				when "1" then
					registration.print_users
				when "2" then
					puts "MILLIMETERS TO CENTIMETERS, INSERT MILLIMETERS"
					var = gets.chomp.to_f
					content = "USER_ID: #{key} USER NAME: #{value} PERFORMS #{var} MILLIMETERS  REPRESENT #{millimeters_to_centimeters(var)} CENTIMETERS"
					puts "#{var} MILLIMETERS  REPRESENT #{millimeters_to_centimeters(var)} CENTIMETERS"
					set_logger(content)
				when "3" then
					puts "CENTIMETERS TO METERS, INSERT CENTIMETERS "
					var = gets.chomp.to_f
					puts "#{var} CENTIMETERS  REPRESENT #{centimeters_to_meters(var)} METERS"
					content = "USER_ID: #{key} USER NAME: #{value} PERFORMS #{var} CENTIMETERS  REPRESENT #{centimeters_to_meters(var)} METERS"
					set_logger(content)
				when "4" then
					puts "METERS TO KILOMETERS, INSERT  METERS "
					var = gets.chomp.to_f
					puts "#{var} METERS  REPRESENT #{metters_to_kilometers(var)} KILOMETERS"
					content = "USER_ID: #{key} USER NAME: #{value} PERFORMS #{var} METERS  REPRESENT #{metters_to_kilometers(var)} KILOMETERS"
					set_logger(content)
				when "5" then
					flag = true
					puts "GOOD BYE"
				else
					puts "INCORRECT OPTION TRY AGAIN PLEASE"
				end
			end
		end
	end

end

registration = Registration.instance 
registration.set_amount
registration.users_case
puts "**** THIS IS THE USER THAT DOESNT PERFORMS ANY CALCULATION ***"
registration.print_user_doesnt_calcularion
puts "**** THIS IS THE LOGGER ***"
registration.print_logger
