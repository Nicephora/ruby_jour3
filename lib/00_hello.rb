def ask_first_name
	puts "Quel est ton prénom ?"
	print ">"
return first_name = gets.chomp.capitalize
end

def say_hello
	first_name = ask_first_name.to_s #On s'assure que ce soit bien un string
	if(first_name.size == 0) 
		puts "Et bien on dirait que tu n'as pas de prénom"
	else
		puts "Bonjour #{first_name} !"
	end
end

def perform
say_hello
end

perform
