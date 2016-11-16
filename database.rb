# The main loop of the application should show a menu of options to the user to include at least:
# Add a person
# Search for a person
# Delete a person
# HINT: Show the list of options and allow the user to enter A for Add, S for Search and D for Delete

  names = [Mark, Hamilton, Gavin]

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






### PROMPT and LOOP beginning
  prompt

  if choice == "A"
    ### ADD program
  elsif choice == "S"
    ### SEARCH program
  elsif choice == "D"
    ### DELETE program
  else incorrect_entry
  break
  end


### ADD   add_entry
  puts "What is their name?"
    name = gets.chomp
  puts "What is their phone number, (###)-###-####"
    phone = gets.chomp
  puts "What is their address?"
    address = gets.chomp
  puts "What is their position at The Ironyard?"
    position = gets.chomp
  puts "What is their salary?"
    salary = gets.chomp
  puts "What is their Slack username?"
    slack = gets.chomp
  puts "What is their GitHub username?"
    github = gets.chomp

  names << name

### SEARCH
  puts "What is the first name of the person you want to search for?"
    name = gets.chomp

  if names.include? name
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



### DELETE
  puts "What is the first name of the person you want to delete?"
    name = gets.chomp

  if names.include? name
    names.delete(name)

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
