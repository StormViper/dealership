require_relative = 'dealer'
class Car
	@@active_if_repeat = false
	def set_repeat(input)
		@@active_if_repeat = input
	end

	@@user_info = {}
	@@manu_list = %w(
								Ford
								Vauxhall
								Bentley
								Honda)

	def display_user_info
		@@user_info
	end

	def grab_user_info
		@@user_info = @@user.get_user_info
	end

	def show_manu_list
		count = 1
		p count.to_s + '. ' + @@manu_list[0]
		count+=1
		p count.to_s + '. ' + @@manu_list[1]
		count+=1
		p count.to_s + '. ' + @@manu_list[2]
		count+=1
		p count.to_s + '. ' + @@manu_list[3]
		if @@active_if_repeat
			@@active_if_repeat = false
			p 'Please select a manufacturer.'
			choice = gets.chomp.to_i
			choice == 1 ? select_manu('ford') : nil
			choice == 2 ? select_manu('vauxhall') : nil
			choice == 3 ? select_manu('bentley') : nil
			choice == 4 ? select_manu('honda') : nil
		end
	end

	def select_manu(choice)
		choice.to_i if choice.class != 'Fixnum'
		case choice
		when 'ford'
			p 'ford'
		when 'vauxhall'
			p 'vauxhall'
		when 'bentley'
			p 'bentley'
		when 'honda'
			p 'honda'
		else
			p 'Error please try again'
			@@active_if_repeat = false
			show_manu_list
		end
	end
end