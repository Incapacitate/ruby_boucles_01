def ask_number
	puts "Salut et bienvenue dans notre superbe pyramide artisanale ! 
	Combien d'étages voudrais-tu ?"
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
	
	if number.to_i == 1 ; 3 ; 5 ; 7 ; 9 ; 11 ; 13 ; 15 ; 17 ; 19 ; 21 ; 23 ; 25
		return puts pyramide

	else number.to_i == 2 ; 4 ; 6 ; 8 ; 10 ; 12 ; 14 ; 16 ; 18 ; 20 ; 22 ; 24
		return puts "Et ben non !"
	end

end

def perform
	number = ask_number
	full_pyramide (number)
	
end

perform