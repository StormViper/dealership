require_relative 'user'
def setup(firstname, lastname)
	@user = User.new(firstname, lastname)
	@user_list = @user.get_list
	@list_number = 1
end

def greeting
	p "Hello, welcome to Newland dealers, we hope you enjoy our user friendly system -"
	p 'for browsing our cars, please select your member number from below if you -'
	p 'do not have a member number please enter 0'
end

def run
	@user_list.each do |user|
		p @list_number.to_s + '. ' + user
		@list_number+=1
	end

	choice = gets.chomp
	@user.check_choice(choice.to_i)	
end

p 'Please enter your first and second name.'
firstName =  gets.chomp
lastName = gets.chomp
if firstName.empty? || lastName.empty? 
	p 'Failed to run firstname or lastname is empty!'
else
	setup(firstName, lastName)
	p greeting
	p run
end