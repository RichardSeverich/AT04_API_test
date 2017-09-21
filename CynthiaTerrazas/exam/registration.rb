require_relative "Module"

class Registration
  attr_accessor :registry
  include ModuleA
  def initialize
    @registry=Hash.new
    @user=nil
    @id=nil
  end

  def method_1
    puts "please enter your username"
    @user=gets.chomp

    if /^[a-z0-9]{0,11}$/.match(@user)

      puts "please enter your id"
      @id=gets.chomp.to_i
      @registry.store(@id, @user)

    else
      puts "your user name is incorrect, try again"
      method_1
    end
  end

  def method_2
    puts "please enter the number of users to register"
    amount=gets.chomp.to_i
    if (amount>=3 && amount<=15)
      amount.times do
        method_1
      end
    else
      puts "your number is incorrect, try again"
      method_2
    end
  end

  def method_3
    puts "please choose the type of conversion
          a) from milimiters to centimeters
          b) from centimeter to meter
          c) from meters to kilometers
          please enter a,b or c"
    @option=gets.chomp.to_s
    return @option
  end

  def method_4
    case @option
      when "a";
        puts "please enter the value in millimeters:"
        mill=gets.chomp.to_i
        result=millimeters_to_centimeters(mill)
        puts "#{mill} millimeters represents #{result} centimeters"
      when "b";
        puts "please enter the value in centimeters:"
        cen=gets.chomp.to_i
        result=centimeters_to_meters(cen)
        puts "#{cen} centimeters represents #{result} meters"
      when "c";
        puts "please enter the value in meters:"
        met=gets.chomp.to_i
        result=meters_to_kilometers(met)
        puts "#{met} meters represents #{result} kilometers"
      else
        ; print "is not correct  try again\n"
        method_4
    end
  end

  def method_5
    @arr=Array.new
    @registry.each{|id, user|
      puts "do you want to perform a calculation? yes/no"
      res=gets.chomp.to_s
      if res == "yes"
        method_3
        method_4
      else
        message="good bye"
        puts message
        @arr.push(message+user)
      end
    }
  end

  def method_6
    puts @arr
  end

  def logger
    @execution = File.open("execution.log", 'a')

    @execution.write(p @registry)
    @execution.write(p @arr)

    @execution.close
  end

  def print_logger
    @execution = File.open("execution.log")
    puts @execution.read
  end


end

def singletn_registration
  @singletn_registration ||= Registration.new
end


reg=Registration.new
reg.method_2
reg.method_3
reg.method_4
reg.method_5
reg.method_6
reg.logger
reg.print_logger
p singletn_registration.method_2
p singletn_registration.object_id
