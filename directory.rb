class StudentDirectory

  def initialize
    @students = []
  end

  def input_students
    # ask user to input a name
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # get the first name
    name = gets.chomp.capitalize
    # while name is not empty:
    while !name.empty?
      # ask for cohort input
      puts "Please enter cohort:"
      # assign input value to a variable
      cohort = gets.chomp.capitalize
      if cohort.empty?
        cohort = "not given"
      end
      # add the student hash to the empty array
      @students <<({name: name, cohort: cohort})
      # print message showing how many names have been entered so far and ask for another name.
      puts "We have #{@students.count} students, please enter new name"
      # get another name from the user and save it to the variable "name"
      name = gets.chomp.capitalize
    end
  end

  def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------"
  end

  def print_students_list
    if @students.count < 1
      nil
    else
      hash_by_cohort = {}
      @students.each do |student|
        name = student[:name]
        cohort = student[:cohort]
        if hash_by_cohort[cohort] == nil
          hash_by_cohort[cohort] = [name]
        else
          hash_by_cohort[cohort].push(name)
        end
      end
      hash_by_cohort.each do |key, value|
        puts "#{key} cohort students are:"
        puts value.join("\n")
      end
    end
  end

  def print_footer
    if @students.count == 1
      puts "Overall, we have 1 great student"
    else
      puts "Overall, we have #{@students.count} great students"
    end
  end

  def print_menu
    # show user list of options
    puts "What would you like to do?"
    puts "1 - Input student names"
    puts "2 - Show the students"
    puts "3 - Save the list to students.csv"
    puts "4 - Exit"
  end

  def show_students
    print_header
    print_students_list
    print_footer
  end

  def process(user_input)
    case user_input
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      exit
    else
      puts "invalid option, try again!"
    end
  end

  def interactive_menu
    loop do
      # show user list of options
      print_menu
      # excute action as per user input
      process(gets.chomp)
    end
  end

  def save_students
    # open file for writing
    file = File.open("students.csv", "w")
    # iterate over the students list
    @students.each do |student|
      student_data_list = [student[:name], student[:cohort]]
      student_csv_line = student_data_list.join(",")
      file.puts student_csv_line
    end
    file.close
  end

end

student_directory = StudentDirectory.new
student_directory.interactive_menu
