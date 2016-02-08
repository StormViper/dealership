require_relative = 'user'
class Car
	def initialize(make, model, color, doors, price, stock)
		@name = name
		@make = make
		@model = model
		@color = color
		@door = doors
		@price = price
		random = Random.new
		@stock = random.rand(0...10)
		@active_if_repeat = false
		def set_repeat(input)
			@active_if_repeat = input
		end

		@user_info = {}
		@manu_list = %w(
									Ford
									Vauxhall
									Bentley
									Honda)
	end

	def set_user_info(info)
		@user_info = info
	end

	def name
		@name
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

	def select_manu(choice)
		choice.to_i if choice.class != 'Fixnum'
		case choice
		when 'ford'
			car1 = Car.new('Ford', 'Mustang', 'black and green', 3, 11492, 3)
			car2 = Car.new('Ford', 'Focus', 'white', 3, 3799, 12)
			car3 = Car.new('Ford', 'Focus ST', 'black', 3, 6700, 6)
			car4 = Car.new('Ford', 'Kuga', 'green', 5, 13659, 9)
			p "The first car is the #{car1.make} #{car1.model} in #{car1.color} with #{car1.door.to_s} doors and costs #{car1.price.to_s} we only have #{car1.stock.to_s} left." if check_stock == true && car1.price <= @user_info[:amount] && check_garage
			p "The second car is the #{car2.make} #{car2.model} in #{car2.color} with #{car2.door.to_s} doors and costs #{car2.price.to_s} we only have #{car2.stock.to_s} left." if check_stock == true && car2.price <= @user_info[:amount] && check_garage
			p "The third car is the #{car3.make} #{car3.model} in #{car3.color} with #{car3.door.to_s} doors and costs #{car3.price.to_s} we only have #{car3.stock.to_s} left." if check_stock == true && car3.price <= @user_info[:amount] && check_garage
			p "The fourth car is the #{car4.make} #{car4.model} in #{car4.color} with #{car4.door.to_s} doors and costs #{car4.price.to_s} we only have #{car4.stock.to_s} left." if check_stock == true && car4.price <= @user_info[:amount] && check_garage
			p 'This message is showing because you either do not have enough money or garage space! Please make sure you entered the right details' if !check_garage
			p 'Some of these are not available however you can order a delivery online.' if check_stock == false
		when 'vauxhall'
			car1 = Car.new('Vauxhall', 'model', 'color', 5, 6500, 0)
			car2 = Car.new('Vauxhall', 'model', 'color', 3, 4000, 0)
			car3 = Car.new('Vauxhall', 'model', 'color', 5, 8500, 0)
			car4 = Car.new('Vauxhall', 'model', 'color', 3, 3000, 0)
			p "The first car is the #{car1.make} #{car1.model} in #{car1.color} with #{car1.door.to_s} doors and costs #{car1.price.to_s} we only have #{car1.stock.to_s} left." if check_stock && car1.price <= @user_info[:amount] && check_garage
			p "The second car is the #{car2.make} #{car2.model} in #{car2.color} with #{car2.door.to_s} doors and costs #{car2.price.to_s} we only have #{car2.stock.to_s} left." if check_stock && car2.price <= @user_info[:amount] && check_garage
			p "The third car is the #{car3.make} #{car3.model} in #{car3.color} with #{car3.door.to_s} doors and costs #{car3.price.to_s} we only have #{car3.stock.to_s} left." if check_stock && car3.price <= @user_info[:amount] && check_garage
			p "The fourth car is the #{car4.make} #{car4.model} in #{car4.color} with #{car4.door.to_s} doors and costs #{car4.price.to_s} we only have #{car4.stock.to_s} left." if check_stock && car4.price <= @user_info[:amount] && check_garage
			p 'This message is showing because you either do not have enough money or garage space! Please make sure you entered the right details' if !check_garage
			p 'Some of these are not available however you can order a delivery online.' if check_stock == false
		when 'bentley'
			car1 = Car.new('Bentley', 'model', 'color', 5, 45000, 0)
			car2 = Car.new('Bentley', 'model', 'color', 3, 35000, 0)
			car3 = Car.new('Bentley', 'model', 'color', 5, 76000, 0)
			car4 = Car.new('Bentley', 'model', 'color', 3, 40000, 0)
			p "The first car is the #{car1.make} #{car1.model} in #{car1.color} with #{car1.door.to_s} doors and costs #{car1.price.to_s} we only have #{car1.stock.to_s} left." if check_stock && car1.price <= @user_info[:amount] && check_garage
			p "The second car is the #{car2.make} #{car2.model} in #{car2.color} with #{car2.door.to_s} doors and costs #{car2.price.to_s} we only have #{car2.stock.to_s} left." if check_stock && car2.price <= @user_info[:amount] && check_garage
			p "The third car is the #{car3.make} #{car3.model} in #{car3.color} with #{car3.door.to_s} doors and costs #{car3.price.to_s} we only have #{car3.stock.to_s} left." if check_stock && car3.price <= @user_info[:amount] && check_garage
			p "The fourth car is the #{car4.make} #{car4.model} in #{car4.color} with #{car4.door.to_s} doors and costs #{car4.price.to_s} we only have #{car4.stock.to_s} left." if check_stock && car4.price <= @user_info[:amount] && check_garage
			p 'This message is showing because you either do not have enough money or garage space! Please make sure you entered the right details' if !check_garage
			p 'Some of these are not available however you can order a delivery online.' if check_stock == false
		when 'honda'
			car1 = Car.new('Honda', 'model', 'color', 5, 14000, 0)
			car2 = Car.new('Honda', 'model', 'color', 3, 7500, 0)
			car3 = Car.new('Honda', 'model', 'color', 5, 6500, 0)
			car4 = Car.new('Honda', 'model', 'color', 3, 4500, 0)
			p "The first car is the #{car1.make} #{car1.model} in #{car1.color} with #{car1.door.to_s} doors and costs #{car1.price.to_s} we only have #{car1.stock.to_s} left." if check_stock && car1.price <= @user_info[:amount] && check_garage
			p "The second car is the #{car2.make} #{car2.model} in #{car2.color} with #{car2.door.to_s} doors and costs #{car2.price.to_s} we only have #{car2.stock.to_s} left." if check_stock && car2.price <= @user_info[:amount] && check_garage
			p "The third car is the #{car3.make} #{car3.model} in #{car3.color} with #{car3.door.to_s} doors and costs #{car3.price.to_s} we only have #{car3.stock.to_s} left." if check_stock && car3.price <= @user_info[:amount] && check_garage
			p "The fourth car is the #{car4.make} #{car4.model} in #{car4.color} with #{car4.door.to_s} doors and costs #{car4.price.to_s} we only have #{car4.stock.to_s} left." if check_stock && car4.price <= @user_info[:amount] && check_garage
			p 'This message is showing because you either do not have enough money or garage space! Please make sure you entered the right details' if !check_garage
			p 'Some of these are not available however you can order a delivery online.' if check_stock == false
		else
			p 'Error please try again'
			@active_if_repeat = false
			show_manu_list
		end
	end
end