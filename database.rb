#!/usr/bin/ruby

# Remaining Issues:
#	(1) Only the first new entry gets saved to the array.
#	(2) Can't get methods to work -- had to put all instructions back in body to let program Run.
#	(3) "end" right after class Person doesn't have desired effect on code. (Probably the root cause of my frustrations)
#	(

class Person
	attr_accessor :name, :position, :phone_number, :address, :salary, :github, :slack

	@people = []

#  def no_match

#  end

#  def incorrect_entry
		#puts "You entered an incorrect option."
#  end

#  def add_entry

#  end

#  def search_entry

	#end

#  def delete_entry

#  end

	loop do
		puts
		puts "Hello.  Type 'A' to add a person, 'S' to search for an entry, 'D' to delete."
			choice = gets.chomp

		if choice == "A"
			person = Person.new

			puts "What is their name?"
			person.name = gets.chomp
			puts "What is their phone number, (###)-###-####"
			person.phone_number = gets.chomp
			puts "What is their address?"
			person.address = gets.chomp
			puts "What is their position at The Ironyard?"
			person.position = gets.chomp
			puts "What is their salary?"
			person.salary = gets.chomp
			puts "What is their Slack username?"
			person.slack = gets.chomp
			puts "What is their GitHub username?"
			person.github = gets.chomp

			@people << person

		elsif choice == "S"
			puts "What is the first name of the person you want to search for?"
			search = gets.chomp

			index = 0
			if index >= @people.length
				puts "That person is not in our records."
				break

			else
				loop do
					if index >= @people.length
						break
					end

					person = @people[index]
					if search == person.name
						puts
						puts "#{person.name}: "
						puts
						puts "Phone #:  #{person.phone_number}"
						puts "Address:  #{person.address}"
						puts "Position held by #{name} at The Iron Yard: #{person.position}"
						puts "Salary ($): #{person.salary}"
						puts "Slack Account: #{person.slack}"
						puts "GitHub Account: #{person.github}"
					else
						break
					end

					index = index + 1
				end
			end

		elsif choice == "D"
				#  delete_entry
			puts "What is the first name of the person you want to delete?"
			search = gets.chomp

			index = 0
			if index >= @people.length
				puts "That person is not in our records."
				break

			else
				loop do
					if index > @people.length
						break
					end

					person = @people[index]
					if search == person.name
					    person.delete(search)
					else
						break
					end

					index = index + 1
				end
			end


		end

	# end_program_routine

	puts
	puts "Would you like to make another search? (y/n)"
		search_again = gets.chomp

		if search_again == 'n'
			puts "Thank you. Goodbye."
		break
		end
	end

end
