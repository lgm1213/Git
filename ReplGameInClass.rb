def say_mrrobot_greeting
	puts "Hello Friend."
	puts "What's your name"
end

say_mrrobot_greeting

name = gets.chomp
puts "Hey #{name}, nice  to meet you."

def show_intro
	puts "After all of your hard work, you've become The Batman"
end

def say(name, statement)
	puts(name.nil? ?  statement : "#{name.capitalize}: #{statement}")
end

def ask_question(question, options)
	say nil, question
	say nil, options
	gets.chomp.downcase
end

def handle_sidekick(sidekick)
	if sidekick == "robin"	
		say sidekick, "Holy rusted metal, Batman!"
	elsif sidekick == "batgirl"
		say sidekick, "Suit me up Uncle Alfred"
	else
		say(nil, "Fine, I'll pick one for you")
		sidekick = "robin"
	end
end

def handle_weapon(sidekick, weapon)
	case weapon
	when "batarang"
		say sidekick, "Awesome! A batarang!"
	when "fists"
		say sidekick, "I don't need a weapon! I'll use my fists like you Batman"
	when "flashlight"
		say sidekick, "Bro... Uh.. Thanks? I'll use this I guess"
	else
		say(nil, "Don't be Selfish Bro Share your Toys!")
		weapon = "batarang"
	end
end

def handle_villan(villian)
	case villian
	when "riddler"
		say "riddler", "puzzle me this, Batman"
	when "penguin"
		say "penguin", "rweh rweh rweh"
	when "joker"
		say "joker", "ha ha ha... ha ha!"
	else
		say nil, "This shouldn't happen"
	end
end


show_intro

sidekick = ask_question("Who will be your sidekick?", "Options: Batgirl or Robin")
handle_sidekick(sidekick)

weapon = ask_question("Awesome! Let's get your sidekick a weapon", "Options: batarang, fists, flashlight")
handle_weapon(sidekick, weapon)


villian = ask_question("Who should we fight first?", "Options: Joker, Penguin, Riddler")
valid_villians = ["joker", "riddler", "penguin"]


until valid_villians.include?(villian)
	villian = ask_question(["Huh?", "Que?", "Como?", "Wha?"].sample, "Options: Joker, Penguin, Riddler")
end

handle_villan(villian)


		
	