print "Hey there, I'm Colin. You're about to play my number guessing game. It's going to be super hard so you will not get it."

puts "First though, what's your name?"
first_name = gets.chomp
first_name.capitalize!

puts "Hi #{first_name}! Good to meet you. You must guess a number between 1 and 10 and you're going to only have 3 tries to do so (so don't screw up)."

secret_number = rand(10)

puts "Alright, let's get started, what's your first guess?"
first_guess = Integer(gets.chomp)


if first_guess > secret_number
  puts "Too high."
elsif first_guess < secret_number
  puts "Too low."
else
  puts "Way to go, you got it."
end

if first_guess != secret_number

  puts "Let's try again. You have two guesses left. What's your second guess?"
  second_guess = Integer(gets.chomp)
  
  if second_guess > secret_number
    puts "Too high."
  elsif second_guess < secret_number
  	puts "Too low."
  else
  	puts "Got it on the second try."
  end
 end

if first_guess != secret_number && second_guess != secret_number
  	
   puts "Alright, final guess?"
   third_guess = Integer(gets.chomp)
    
   if third_guess > secret_number
   puts "Bummer. The secret number was #{secret_number}."
   elsif third_guess < secret_number
   puts "Bummer. The secret number was #{secret_number}."
   else
   puts "You got it!"
   end
end