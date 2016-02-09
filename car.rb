require_relative = 'user'
require_relative 'user_car_manager'
class Car < UserCarManager
	def initialize(make, model, color, doors, price, stock)
		@make = make
		@model = model
		@color = color
		@door = doors
		@price = price
		@UserCar = UserCarManager.new
		random = Random.new
		@stock = random.rand(0...10)
		@active_if_repeat = false
		def set_repeat(input)
			@active_if_repeat = input
		end

		@choice = ''
		@user_info = {}
		@manu_list = %w(
									Ford
									Vauxhall
									Bentley
									Honda)
	end

	def set_user_info(info)
		@user_info = info
		@UserCar.pass_in_user_info(@user_info)
	end

	def make
		@make
	end

	def model
		@model
	end

	def color
		@color
	end

	def door
		@door
	end

	def price
		@price
	end

	def stock
		@stock
	end

	def check_stock
		@stock > 0
	end

	def check_garage
		@user_info[:garage_space] > 0
	end

	def show_manu_list
		count = 1
		p count.to_s + '. ' + @manu_list[0]
		count+=1
		p count.to_s + '. ' + @manu_list[1]
		count+=1
		p count.to_s + '. ' + @manu_list[2]
		count+=1
		p count.to_s + '. ' + @manu_list[3]
		if @active_if_repeat
			@active_if_repeat = false
			p 'Please select a manufacturer.'
			choice = gets.chomp.to_i
			choice == 1 ? select_manu('ford') : nil
			choice == 2 ? select_manu('vauxhall') : nil
			choice == 3 ? select_manu('bentley') : nil
			choice == 4 ? select_manu('honda') : nil
		end
	end

	def case_for_car_choice(choice)
		case choice
			when 0
			@active_if_repeat = true
			show_manu_list
			when 1
				@UserCar.car_choice('car1')
			when 2
				@UserCar.car_choice('car2')
			when 3
				@UserCar.car_choice('car3')
			when 4
				@UserCar.car_choice('car4')
			else
				p 'ERROR PLEASE TRY AGAIN'
				select_manu('ford')
			end
	end

	def setup_car_list(car1, car2, car3, car4)
			car_one = {:make => car1.make, :model => car1.model, :color => car1.color, :door => car1.door, :price => car1.price, :stock => car1.stock}
			car_two = {:make => car2.make, :model => car2.model, :color => car2.color, :door => car2.door, :price => car2.price, :stock => car2.stock}
			car_three = {:make => car3.make, :model => car3.model, :color => car3.color, :door => car3.door, :price => car3.price, :stock => car3.stock}
			car_four = {:make => car4.make, :model => car4.model, :color => car4.color, :door => car4.door, :price => car4.price, :stock => car4.stock}
			@UserCar.pass_in_car_list(car_one, car_two, car_three, car_four)
	end

	def car_paragraph(car1, car2, car3, car4)
			p "1. The first car is the #{car1.make} #{car1.model} in #{car1.color} with #{car1.door.to_s} doors and costs #{car1.price.to_s} we only have #{car1.stock.to_s} left." if check_stock == true && car1.price <= @user_info[:amount] && check_garage
			p "2. The second car is the #{car2.make} #{car2.model} in #{car2.color} with #{car2.door.to_s} doors and costs #{car2.price.to_s} we only have #{car2.stock.to_s} left." if check_stock == true && car2.price <= @user_info[:amount] && check_garage
			p "3. The third car is the #{car3.make} #{car3.model} in #{car3.color} with #{car3.door.to_s} doors and costs #{car3.price.to_s} we only have #{car3.stock.to_s} left." if check_stock == true && car3.price <= @user_info[:amount] && check_garage
			p "4. The fourth car is the #{car4.make} #{car4.model} in #{car4.color} with #{car4.door.to_s} doors and costs #{car4.price.to_s} we only have #{car4.stock.to_s} left." if check_stock == true && car4.price <= @user_info[:amount] && check_garage
			p 'This message is showing because you either do not have enough money or garage space! Please make sure you entered the right details' if !check_garage
			p 'Some of these are not available however you can order a delivery online.' if check_stock == false
	end

	def select_manu(choice)
		@choice = choice
		case choice
		when 'ford'
			car1 = Car.new('Ford', 'Mustang', 'black and green', 3, 11492, 3)
			car2 = Car.new('Ford', 'Focus', 'white', 3, 3799, 12)
			car3 = Car.new('Ford', 'Focus ST', 'black', 3, 6700, 6)
			car4 = Car.new('Ford', 'Kuga', 'green', 5, 13659, 9)
			setup_car_list(car1, car2, car3, car4)
			car_paragraph(car1, car2, car3, car4)
			p ''
			p "Do you want to purchase any cars? If you don't please press 0 otherwise please select a number"
			car_choice = gets.chomp.to_i
			case_for_car_choice(car_choice)
		when 'vauxhall'
			car1 = Car.new('Vauxhall', 'model', 'color', 5, 6500, 0)
			car2 = Car.new('Vauxhall', 'model', 'color', 3, 4000, 0)
			car3 = Car.new('Vauxhall', 'model', 'color', 5, 8500, 0)
			car4 = Car.new('Vauxhall', 'model', 'color', 3, 3000, 0)
			setup_car_list(car1, car2, car3, car4)
			car_paragraph(car1, car2, car3, car4)
			p ''
			p "Do you want to purchase any cars? If you don't please press 0 otherwise please select a number"
			car_choice = gets.chomp.to_i
			case_for_car_choice(car_choice)
		when 'bentley'
			car1 = Car.new('Bentley', 'model', 'color', 5, 45000, 0)
			car2 = Car.new('Bentley', 'model', 'color', 3, 35000, 0)
			car3 = Car.new('Bentley', 'model', 'color', 5, 76000, 0)
			car4 = Car.new('Bentley', 'model', 'color', 3, 40000, 0)
			setup_car_list(car1, car2, car3, car4)
			car_paragraph(car1, car2, car3, car4)
			p ''
			p "Do you want to purchase any cars? If you don't please press 0 otherwise please select a number"
			car_choice = gets.chomp.to_i
			case_for_car_choice(car_choice)
		when 'honda'
			car1 = Car.new('Honda', 'model', 'color', 5, 14000, 0)
			car2 = Car.new('Honda', 'model', 'color', 3, 7500, 0)
			car3 = Car.new('Honda', 'model', 'color', 5, 6500, 0)
			car4 = Car.new('Honda', 'model', 'color', 3, 4500, 0)
			setup_car_list(car1, car2, car3, car4)
			car_paragraph(car1, car2, car3, car4)
			p ''
			p "Do you want to purchase any cars? If you don't please press 0 otherwise please select a number"
			car_choice = gets.chomp.to_i
			case_for_car_choice(car_choice)
		else
			p 'Error please try again'
			@active_if_repeat = false
			show_manu_list
		end
	end
end