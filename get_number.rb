# Get my number GAME
# Written by Ruslan

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.capitalize.chomp
puts "\nWelcome, #{name}!"

puts "Я загадал случайное число между 1 и 100."
puts "Сможете угадать?"
target = rand (100) + 1	# rand генерирует числа от 0 до указанного (а здесь нужно от 1 до 100)

num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "Oсталось #{10 - num_guesses} попыток"
  num_guesses += 1
  print "Введите число: "
  guess = gets.to_i

  if guess < target
    puts "Your guess was LOW."
  elsif guess > target
    puts "Your guess was HIGH."
  elsif guess == target
    puts "\nGood job, #{name}"
    puts "Вы угадали мое число за #{num_guesses} попыток!"
    guessed_it = true
  end
end

unless guessed_it
  puts "\nВы не угадали. (Число было '#{target}')"
end
