# Prints Hello World
puts "Hello world"

# Finds index of Ruby in "Hello Ruby"
puts "Hello Ruby".index "Ruby"

# Print Nikkie 10 times
puts("Nikkie " * 10)

# Prints "this is the sentence x" where x changes from 1 to 10
(1..10).each { |x| puts "this is the sentence #{x}" }
# Not sure what |x| is doing?

# Guessing Game between 1 and 10:
random = rand(10)
guess = 0

while guess != random do
  puts "Guess a number: "
  guess = gets.to_i
  puts "Guess is too low, try again!" if guess < random
  puts "Guess is too high, try again!" if guess > random
end

puts "You guessed correctly!!"

# To run this file: 'ruby day-1.rb' from console
