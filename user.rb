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
		choice.to_i if choice.class != 'Fixnum'
		@choice = choice
		case @choice
		when 0
			new_user(@firstname, @lastname)
		else
			p 'ERROR'
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
				user = @firstname + ' ' + @lastname
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
				@manu.set_repeat(true)
				p @manu.show_manu_list
			end
		end

		def get_user_info
			@user_info
		end
	end