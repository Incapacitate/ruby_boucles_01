def ask_first_name # Déf demandant le prénom de l'user et ouvre champ de saisie
	puts "Quel est ton prénom ?"
	print "> "
	first_name = gets.chomp

end

def say_hello (first_name)
	puts "Bonjour, #{first_name}."
	
end

def create_password
	puts "Choisissez un mot de passe :"
	print "> "
	password = gets.chomp
end

def confirm_password
	puts "Entrez à nouveau votre mot de passe :"
	print "> "
	answer = gets.chomp
end

def welcome_screen
	password = create_password
	answer = confirm_password
	
	if password == answer
	puts "Super, bienvenue sur la secret page."

	else answer != password
    puts "Saisie incorrecte, veuillez le saisir à nouveau :"
    print "> "
    answer = gets.chomp
    end
end


def perform
	first_name = ask_first_name
	say_hello(first_name)
	create_password
	confirm_password = welcome_screen
end

perform