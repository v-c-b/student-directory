
# let's put all students into an array
# not needed anymore
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november}, 
  {name: "Darth Vader", cohort: :november}, 
  {name: "Nurse Ratched", cohort: :november}, 
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november}, 
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november}, 
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november} 
] 

# really starts here

@students = []

def print_menu 
  puts "1. Input the students" 
  puts "2. Show the students" 
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students 
  print_header 
  print_students 
  print_footer
end


def interactive_menu 
  loop do
    print_menu
    process(gets.chomp)
  end  
end

def process(selection) 
  case selection 
    when "1" 
      input_students 
    when "2" 
      show_students
    when "9" 
      exit 
    else puts "I don't know what you mean, try again" 
  end 
end
	
def input_students 
  puts "Please enter the names of the students" 
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november} 
    puts "Now we have #{@students.count} students" 
    # get another name from the user
    name = gets.chomp 
  end
  # return the array of students
  @students
end

def print_header 
  puts "The students of Villains Academy" 
  puts "-------------"
end

def print_students
  @students.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end 
end

def print_footer
  puts "Overall, we have #{@students.count} great students" 
end

#nothing happens until we call the methods
# students = input_students
# print_header 
# print(students)
# print_footer(students)
interactive_menu
