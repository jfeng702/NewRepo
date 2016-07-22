#Basics
# 1.
"Joey "+"Feng"
#2.1
1234/1000
#2.2
1234/1000%10
#2.3
1234/10%100%10
#2.4
1234%1000%100%10
#3
a = {:movie_a => 1975, :movie_b => 2004, :movie_c => 2013, :movie_d => 2001, :movie_e => 1981}
puts a[:movie_a]
puts a[:movie_b]
puts a[:movie_c]
puts a[:movie_d]
puts a[:movie_e]
#4
b = [1975,2004,2013,2001,1981]
puts b[0]
puts b[1]
puts b[2]
puts b[3]
puts b[4]
#5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
#6
puts 1.1*1.1
puts 2.2*2.2
puts 3.3*3.3
#7
there is an opening bracket in the program without a closing bracket following it.
#variables
#1.
puts "Who you be cuz?"
name = gets.chomp
puts "Sup wit it, #{name}"
#2.
puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age+10
puts "In 20 years you will be:"
puts age+20
puts "In 30 years you will be:"
puts age+30
puts "In 40 years you will be:"
puts age+40
#3
puts "Who you be cuz?"
name = gets.chomp
puts "Sup wit it, #{name}"
10.times do |n|
  puts name
end
#4
puts "Who you be cuz?"
fname = gets.chomp
puts "What's your last name?"
lname = gets.chomp
puts "Sup wit it, #{fname} #{lname}"

#5
3 the first time.
2nd time has an error undefined local variable or method because x is inner scope of the do/end block.

#6
shoes is a variable or method not accessible due to being out of scope or not defined.

#Methods
#1
def greeting(name)
  "Hello #{name}"
end

puts greeting("Joey")

#2.
1. x = 2    # => 2

2. puts x = 2    # nil

3. p name = "Joe"    # => "Joe"

4. four = "four"    # => "four"

5. print something = "nothing"    # => nil

#3.
def multiply(x,y)
  x*y
end
multiply(2,3)
#4. no output
#5.1
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
#5.2 
Still returns nil

#6
there is only 1 argument but there needs to be 2
