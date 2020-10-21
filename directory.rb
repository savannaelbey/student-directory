# create an array of hashes, each containing student data
students= [
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
# create a method to print the header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# create a method to print the student name and cohort
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# create a method to print the footer containing the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# call the methods
print_header
print(students)
print_footer(students)
