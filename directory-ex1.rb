# let's put all students into an array
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

def input_students 
  puts "Please enter the names of the students" 
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november} 
    puts "Now we have #{students.count} students" 
    # get another name from the user
    name = gets.chomp 
  end
  # return the array of students
  students
end

def input_hobbies(students) 
students.each_with_index do |student, index|
  puts "#{index+1} #{student[:name]} Enter hobby"
  



def print_header 
  puts "The students of Villains Academy" 
  puts "-------------"
end

def print(students) 
  students.each_with_index do |student, index| 
    puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end 
end

def print_a(students) 
  students.each_with_index do |student, index|
    if student[:name][0,1].downcase == "t" then
      puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end  

def print_b(students) 
  students.each_with_index do |student, index| 
    if student[:name].length < 12 then 
      puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)" 
    end 
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students" 
end

#nothing happens until we call the methods
students = input_students
input_hobbies(students)
print_header 
print_b(students)
print_footer(students)
