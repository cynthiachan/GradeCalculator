#!/usr/bin/ruby -w

# A simple ruby program that calculates grades
# It calculates students' grades based on input of weight and grades
# Author: Cynthia H. Chan

# This method greets the user on start up and request their name
def greeting
  print "Hello!  Please type your name: "
  name = gets #gets gets the user's input
  puts "It is nice to meet you #{name} "
  puts "I am a grade calculator application."
  return name
end

# calc_grade - this method calculates grades based on input
def calc_grade
    print "How many grades you want to calculate? "
    #converts string to integer
    num_inputs = gets.to_i
    sum = 0
    score = 1
    puts "Enter your grades and their weights in percentages"
    for i in 1..num_inputs
      print "Enter grade #{i}: "
      grade = gets.to_i
      print "Enter its weight:"
      weight = (gets.to_f/100)
      score = grade * weight
      puts "score: #{score}"
      sum += score

    end
    puts "sum: #{sum}"
    return sum

end

# letter_grade -this method converts the raw number grade to a letter grade

def letter_grade(grade)
  letter = ""
  case grade
  when 94..100
    letter = "A"
  when 90..93
    letter = "A-"
  when 87..89
    letter = "B+"
  when 84..86
    letter = "B"
  when 80..83
    letter = "B-"
  when 77..79
    letter = "C+"
  when 74..76
    letter = "C"
  when 70..73
    letter =  "C-"
  when 60..69
    letter =  "D"
  else
    letter =  "F"
  end
  return letter
end

# gpa_grade - this is a method that converts the letter grade to a number on the gpa scale
def gpa_grade(letter_grade)
  grade = 0;
  case letter_grade
  when "A"
    grade = 4.0
  when "A-"
    grade = 3.7
  when "B+"
    grade = 3.3
  when "B"
    grade = 3.0
  when "B-"
    grade = 2.7
  when "C+"
    grade = 2.3
  when "C"
    grade = 2.0
  when "C-"
    grade = 1.7
  when "D"
    grade = 1.0
  when "F"
    grade = 0.0
  else
    puts " "
  end
  return grade
end


# get name of user
name = greeting
run_calculator = 1
while run_calculator == 1

    #get raw grade from user
    grade = calc_grade()
    #get letter grade from converter
    letter = letter_grade(grade)

    #grammar fixation
    if (letter == "A" || letter == "A-" || letter == "F")
      puts "Your final letter grade is an #{letter}"
    else
      puts "Your final letter grade is a #{letter}"
    end
    #get gpa grade from converter
    gpa = gpa_grade(letter)
    puts "Your gpa grade is: #{gpa} "

    #prompt to continue application or end it
    puts "Type 1 to run another calculation or 2 to end: "
    run_calculator = gets.to_i

    if run_calculator != 1

      puts "Thanks for using this application!  See you later #{name} ;-)"

    end
end
