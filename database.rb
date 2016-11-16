# The main loop of the application should show a menu of options to the user to include at least:
# Add a person
# Search for a person
# Delete a person
# HINT: Show the list of options and allow the user to enter A for Add, S for Search and D for Delete

class Person
  attr_accessor :name, :position, :phone_number, :address, :salary, :github, :slack
end

people = []

### METHODS
  def prompt
    puts "Hello.  Type 'A' to add a person, 'S' to search for an entry, 'D' to delete."
    choice = gets.chomp
  end

  def no_match
    puts "That person is not in our records."
  end

  def incorrect_entry
    puts "You entered an incorrect option."
  end

  def add_entry

  end

  def search_entry

  end

  def delete_entry

  end


### PROMPT and LOOP beginning
  prompt

  if choice == "A"
    ### ADD   add_entry
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

    people << person
    break

  elsif choice == "S"
    ##.... search_entry
    break

  elsif choice == "D"
    ##.... delete_entry
    break

  else incorrect_entry
  break
  end


### SEARCH  search_entry
  puts "What is the first name of the person you want to search for?"
  name = gets.chomp

  if people.include? name
    puts
    puts "#{name}: "
    puts
    puts "Phone #:  #{phone}"
    puts "Address:  #{address}"
    puts "Position held by #{name} at The Iron Yard: #{position}"
    puts "Salary ($): #{salary}"
    puts "Slack Account: #{slack}"
    puts "GitHub Account: #{github}"

  else
    no_match

  end



### DELETE   delete_entry
  puts "What is the first name of the person you want to delete?"
    name = gets.chomp

  if names.include? name
    person.delete(name)

  else
    puts "That person is not in our records."

  end


### END PROGRAM or DO ANOTHER SEARCH
  puts "Would you like to make another search? (y/n)"
    search_again = gets.chomp

  if search_again == 'n'
    puts "Thank you. Goodbye."
    break
  else

  end
