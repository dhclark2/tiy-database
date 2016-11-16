# The main loop of the application should show a menu of options to the user to include at least:
# Add a person
# Search for a person
# Delete a person
# HINT: Show the list of options and allow the user to enter A for Add, S for Search and D for Delete

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
      #  search_entry
      puts "What is the first name of the person you want to search for?"
      name = gets.chomp

      index = 0
      loop do
        if index >= @people.length
          puts "That person is not in our records."
          break
        end

        person = @people[index]
        if name == person.name
          puts
          puts "#{name}: "
          puts
          puts "Phone #:  #{phone}"
          puts "Address:  #{address}"
          puts "Position held by #{name} at The Iron Yard: #{position}"
          puts "Salary ($): #{salary}"
          puts "Slack Account: #{slack}"
          puts "GitHub Account: #{github}"
        end

        index = index + 1
      end

    elsif choice == "D"
        #  delete_entry
      puts "What is the first name of the person you want to delete?"
      name = gets.chomp

      if @people.include?(name)
        @people.delete(name)

      else
      puts "That person is not in our records."

      end
    end

  end

  # end_program_routine

  puts
  puts "Would you like to make another search? (y/n)"
    search_again = gets.chomp

  if search_again == 'n'
    puts "Thank you. Goodbye."
  else
    return
  end

end
