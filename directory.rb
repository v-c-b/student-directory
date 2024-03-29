@students = []

def print_menu 
  puts "1. Input the students" 
  puts "2. Show the students" 
  puts "3. Save list to file"  
  puts "4. Load list from file"  
  puts "9. Exit"
end

def show_students 
  print_header 
  print_students 
  print_footer
end


def interactive_menu 
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end  
end

def process(selection) 
  case selection 
    when "1" 
      input_students 
    when "2" 
      show_students
    when "3"
      save_students
    when "4"
      load_students    
    when "9" 
      exit 
    else puts "I don't know what you mean, try again" 
  end 
end
	
def input_students 
  puts "Please enter the names of the students" 
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november} 
    puts "Now we have #{@students.count} students" 
    # get another name from the user
    name = STDIN.gets.chomp 
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

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student| 
    student_data = [student[:name], student[:cohort]] 
    file.puts student_data.join(",") 
  end 
  file.close 
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename) 
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else 
    puts "Sorry, #{filename} does not exist."
  end
end

# run the program
try_load_students
interactive_menu
