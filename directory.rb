def input_students
  # create an empty students list
  students = []
  # ask user to input a name
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp.capitalize
  # while name is not empty:
  while !name.empty?
    # add the student hash to the empty array
    students << {name: name, cohort: :november}
    # print message showing how many names have been entered so far and ask for another name.
    puts "Now we have #{students.count} students"
    # get another name from the user and save it to the variable "name"
    name = gets.chomp.capitalize
  end
  # return list of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# get list of students from user and assign the return value to the variable "students"
students = input_students
print_header
# print list of student names and cohort
print(students)
print_footer(students)
