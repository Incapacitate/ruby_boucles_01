def ask_number
	puts "Salut et bienvenue dans notre superbe pyramide-losange artisanale ! 
	Combien d'étages voudrais-tu ?(Choisis IMPERATIVEMENT un nombre IMPAIR!)"
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

	else number.to_i % 2 == 0
		puts "Et ben non ! On ferme le jeu. Try again !"
	end

end

def perform
	number = ask_number
	full_pyramide (number)
	
end

perform