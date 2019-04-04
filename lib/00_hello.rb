def ask_first_name
puts "Quel est ton prénom ?"
print ">"
return first_name = gets.chomp.capitalize
end

def say_hello
  first_name = ask_first_name
  puts "Bonjour #{first_name}"
end

say_hello
