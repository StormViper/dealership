class UserCarManager
	def initialize
		@car1 = {}
		@car2 = {}
		@car3 = {}
		@car4 = {}

		@car_choice = ''
		@user_info = {}

	end

	def pass_in_car_list(car1, car2, car3, car4)
		@car1 = car1
		@car2 = car2
		@car3 = car3
		@car4 = car4
	end

	def pass_in_user_info(info)
		@user_info = info
	end

	def car_choice(input)
		@car_choice = input
		check_payment
	end

	def check_payment
		case @car_choice
		when 'car1'
			if @user_info[:amount] < @car1[:price]
				p 'You do not have enough for this car, please restart and select another car.'
			else
				p 'You have enough for this car please confirm your payment(Y/N) if you press No you will exit this application.'
				payment_choice = gets.chomp
				payment_choice == 'Y' || payment_choice == 'y' ? confirm_payment('car1') : nil
			end
		when 'car2'
			if @user_info[:amount] < @car2[:price]
				p 'You do not have enough for this car, please restart and select another car.'
			else
				p 'You have enough for this car please confirm your payment(Y/N) if you press No you will exit this application.'
				payment_choice = gets.chomp
				payment_choice == 'Y' || payment_choice == 'y' ? confirm_payment('car2') : nil
			end
		when 'car3'
			if @user_info[:amount] < @car3[:price]
				p 'You do not have enough for this car, please restart and select another car.'
			else
				p 'You have enough for this car please confirm your payment(Y/N) if you press No you will exit this application.'
				payment_choice = gets.chomp
				payment_choice == 'Y' || payment_choice == 'y' ? confirm_payment('car3') : nil
			end
		when 'car4'
			if @user_info[:amount] < @car4[:price]
				p 'You do not have enough for this car, please restart and select another car.'
			else
				p 'You have enough for this car please confirm your payment(Y/N) if you press No you will exit this application.'
				payment_choice = gets.chomp
				payment_choice == 'Y' || payment_choice == 'y' ? confirm_payment('car4') : nil
			end
		else
			p 'ERROR FAILED TO GET CHOICE - RESTARTING'
		end
	end

	def confirm_payment(payment_choice)
		case payment_choice
		when 'car1'
			@user_info[:amount] = @user_info[:amount] - @car1[:price]
			@user_info[:garage_space] = @user_info[:garage_space] - 1

			render_end(payment_choice)
		when 'car2'
			@user_info[:amount] = @user_info[:amount] - @car2[:price]
			@user_info[:garage_space] = @user_info[:garage_space] - 1
			render_end(payment_choice)
		when 'car3'
			@user_info[:amount] = @user_info[:amount] - @car3[:price]
			@user_info[:garage_space] = @user_info[:garage_space] - 1
			render_end(payment_choice)
		when 'car4'
			@user_info[:amount] = @user_info[:amount] - @car4[:price]
			@user_info[:garage_space] = @user_info[:garage_space] - 1
			render_end(payment_choice)
		else
		end
	end

	def render_end(choice)
		case choice
		when 'car1'
			p "Thank you for visiting today, you have successfully bought the #{@car1[:make]} #{@car1[:model]}."
			p "You have #{@user_info[:amount]} left and you only have #{@user_info[:garage_space]} spaces in your garage"
			p "Thank you for dealing with newlands Dealers! See you next time."
		when 'car2'
			p "Thank you for visiting today, you have successfully bought the #{@car2[:make]} #{@car2[:model]}."
			p "You have #{@user_info[:amount]} left and you only have #{@user_info[:garage_space]} spaces in your garage"
			p "Thank you for dealing with newlands Dealers! See you next time."
		when 'car3'
			p "Thank you for visiting today, you have successfully bought the #{@car3[:make]} #{@car3[:model]}."
			p "You have #{@user_info[:amount]} left and you only have #{@user_info[:garage_space]} spaces in your garage"
			p "Thank you for dealing with newlands Dealers! See you next time."
		when 'car4'
			p "Thank you for visiting today, you have successfully bought the #{@car4[:make]} #{@car4[:model]}."
			p "You have #{@user_info[:amount]} left and you only have #{@user_info[:garage_space]} spaces in your garage"
			p "Thank you for dealing with newlands Dealers! See you next time."
		else
			'ERROR: Please restart'
		end
	end
end