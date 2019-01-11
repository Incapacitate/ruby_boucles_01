def ask_first_name # Déf demandant le prénom de l'user et ouvre champ de saisie
	puts "Quel est ton prénom ?"
	print "> "
	first_name = gets.chomp

end

def say_hello (first_name)
	puts "Bonjour, #{first_name} !"
	
end
	
def perform 
	first_name = ask_first_name
	say_hello(first_name)
	
end

perform