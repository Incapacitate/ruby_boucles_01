def ask_number
<<<<<<< HEAD
	puts "Salut et bienvenue dans notre superbe pyramide-losange artisanale ! 
	Combien d'étages voudrais-tu ?(Choisis IMPERATIVEMENT un nombre IMPAIR!)"
=======
	puts "Salut et bienvenue dans notre superbe pyramide artisanale ! 
	Combien d'étages voudrais-tu ? (choisis un nombre impair !)
>>>>>>> 26029ea269b123f8fff628a379f8900c78cd4c42
	print "> "
	number = gets.chomp

end

def full_pyramide (number)
pyramide = []
number.to_i.times do |i|
	a = "#{"#" * i}"
	b = "#{"#" * (i + 1)}"
	c = "#{" " * (number.to_i - i)}"
	pyramide << c + a + b
	end

number.to_i.downto(0) do |i|
	a = "#{"#" * i}"
	b = "#{"#" * (i + 1)}"
	c = "#{" " * (number.to_i - i)}"
	pyramide << c + a + b
	end
	
	if number.to_i % 2 == 1
		puts pyramide

<<<<<<< HEAD
	else number.to_i % 2 == 0
		puts "Et ben non ! On ferme le jeu. Try again !"
=======
	else 
		puts "Et ben non !"
>>>>>>> 26029ea269b123f8fff628a379f8900c78cd4c42
	end

end

def perform
	number = ask_number
	full_pyramide (number)
	
end

perform