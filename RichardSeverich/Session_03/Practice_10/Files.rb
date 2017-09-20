class Files
	def open_file(nameFile)
		@nameFile = nameFile
		@file_example = File.open(@nameFile, 'w+')
		@file_example.truncate(0)
		@file_example.close
	end

	def set_data
		@file_example = File.open(@nameFile, 'a+')
		puts "*** ENTER QUANTITY OF LINES ***"
		qLines = gets.chomp.to_i
		qLines.times do | index |
			puts "ENTER CONTENT OF LINE NUMBER #{index+1}"
			content = gets.chomp
			@file_example.write(content)
		end
		@file_example.close
	end

	def print_file
		@file_example = File.open(@nameFile)
		print @file_example.read
		@file_example.close
	end

	def add_line
		@file_example = File.open(@nameFile, 'a+')
		puts "*** ADD MORE LINES ***"
		puts "*** ENTER QUANTITY OF LINES ***"
		qLines = gets.chomp.to_i
		qLines.times do | index |
			puts "ENTER CONTENT OF LINE NUMBER #{index+1}"
			content = gets.chomp
			@file_example.write(content)
		end
		@file_example.close
	end

end
myFile = Files.new
puts " *** INSERT NAME OF FILE E.g test.txt ***"
myFile.open_file(gets.chomp)
myFile.set_data
myFile.print_file
myFile.add_line
myFile.print_file
