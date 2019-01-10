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
	answer = confirm_password
	password = create_password
	
	if answer == password
	return sucess
	
	end

	while answer != password
    puts "Saisie incorrecte, veuillez le saisir à nouveau :"
    print "> "
    answer = gets.chomp
    end

    if answer == password
    return sucess
	end
end

def sucess
	puts "ça faisait longtemps !"
	puts "vous avez 'è mails en attente"
	puts "n'oubliez pas votre rendez-vous chez le dentiste"
end

def perform
	create_password
	confirm_password
	welcome_screen
	sucess
end

perform