require_relative 'car'
class User < Car
	@@manu = Car.new
	@@user_info = {}
	@@amount = 0
	@@garage_space = 0
	@@choice = ''
	@@user_list = [
		'John Smith',
		'Charlie Brice',
		'Foo Bar',
		'Matt Smith',
		'Chloe Smith',
	]

	def get_list
		@@user_list
	end

	def check_choice(choice)
		choice.to_i if choice.class != 'Fixnum'
		@@choice = choice
		case @@choice
		when 0
			p 'Please enter your first name'
			firstname = gets.chomp
			p 'Please enter your second name'
			lastname = gets.chomp
			new_user(firstname.capitalize, lastname.capitalize)
		else
			p 'ERROR'
		end
	end

		def new_user(firstName, lastName)
			if firstName.empty? || lastName.empty?
				p 'Your first name or last name is empty, please re-enter your first name then last name.'
				firstname = gets.chomp
				p 'Now your last name'
				lastname = gets.chomp
				new_user(firstname, lastname)
			else
				user = firstName + ' ' + lastName
				p "Thank you for deciding to be a new member of Newland dealers #{firstName}."
				p "To complete your application, please finish off some more questions."
				p ''
				p 'How much money are you looking to spend?'
				@@amount = gets.chomp.to_i

				p 'How much garage space do you have?'
				@@garage_space = gets.chomp.to_i

				p 'Thank you, we will now display our list of cars.'
				@@user_list << user
				@@user_info = {:name => user, :amount => @@amount, :garage_space => @@garage_space}
				@@manu.set_repeat(true)
				p @@manu.show_manu_list
			end
		end

		def get_user_info
			@@user_info
		end
	end