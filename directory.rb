# create an array containing student names
student_list = ["Dr. Hannibal Lecter", "Darth Vader",
  "Nurse Ratched", "Michael Corleone", "Alex DeLarge",
  "The Wicked Witch of the West", "Terminator", "Freddy Krueger", "The Joker",
  "Joffrey Baratheon", "Norman Bates"]
# create a method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# create a method to print each name in the student list array
def print_names(names)
  names.each do |name|
    puts name
  end
end
# create a method to print the footer containing the total number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# call the methods
print_header
print_names(student_list)
print_footer(student_list)
