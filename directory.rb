
# first we print a message
puts "The students of Villains Academy"
puts "-------------"
# then we place the student names in an array
student_list = ["Dr. Hannibal Lecter", "Darth Vader",
  "Nurse Ratched", "Michael Corleone", "Alex DeLarge",
  "The Wicked Witch of the West", "Terminator", "Freddy Krueger", "The Joker",
  "Joffrey Baratheon", "Norman Bates"]
# to print each name on a separate line, we can iterate over each element in the
# array and print it:
student_list.each do |student|
  puts student
end
# finally we print the total number of students
puts "Overall, we have #{student_list.count} great students"
