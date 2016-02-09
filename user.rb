require_relative 'car'
class User < Car
	def initialize(firstname, lastname)
		@firstname = firstname
		@lastname = lastname
		@manu = Car.new('make', 'model', 'color', 'doors', 0, 0)
		@user_info = {}
		@user_list = [
			'John Smith',
			'Charlie Brice',
			'Foo Bar',
			'Matt Smith',
			'Chloe Smith',
		]
	end

	def get_list
		@user_list
	end

	def check_choice(choice)
		@choice = choice
		case choice
		when 0
			new_user(@firstname, @lastname)
		when 1
			new_user('John', 'Smith')
		when 2
			new_user('Charlie', 'Brice')
		when 3
			new_user('Foo', 'Bar')
		when 4
			new_user('Matt', 'Smith')
		when 5
			new_user('Chloe', 'Smith')
		else
			p 'Error:: Please try again:'
			choice_two = gets.chomp.to_i
			check_choice(choice_two)
		end
	end

		def new_user(firstName, lastName)
			if @firstname.empty? || @lastname.empty?
				p 'Your first name or last name is empty, please re-enter your first name then last name.'
				firstname = gets.chomp
				p 'Now your last name'
				lastname = gets.chomp
				new_user(firstname, lastname)
			else
				user = firstName + ' ' + lastName
				case user
				when 'John Smith'
					p "Thank you for returning to Newland dealers #{firstName}."
					p ''
					@amount = 16000
					@garage_space = 1

					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
				when 'Charlie Brice'
					p "Thank you for returning to Newland dealers #{firstName}."
					p ''
					@amount = 25000
					@garage_space = 2

					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
				when 'Foo Bar'
					p "Thank you for returning to Newland dealers #{firstName}."
					@amount = 30000
					@garage_space = 1

					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
				when 'Matt Smith'
					p "Thank you for returning to Newland dealers #{firstName}."
					p ''
					@amount = 45000
					@garage_space = 3

					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
				when 'Chloe Smith'
					p "Thank you for returning to Newland dealers #{firstName}."
					p ''
					@amount = 86142
					@garage_space = 5

					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
				else
					p "Thank you for deciding to be a new member of Newland dealers #{@firstname}."
					p "To complete your application, please finish off some more questions."
					p ''
					p 'How much money are you looking to spend?'
					@amount = gets.chomp.to_i

					p 'How much garage space do you have?'
					@garage_space = gets.chomp.to_i

					p 'Thank you, we will now display our list of cars.'
					@user_list << user
					@user_info = {:name => user, :amount => @amount, :garage_space => @garage_space}
					@manu.set_user_info(@user_info)
					@manu.set_repeat(true)
					p @manu.show_manu_list
			end
		end
	end

		def get_user_info
			@user_info
		end
	end