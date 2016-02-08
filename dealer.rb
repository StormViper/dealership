require_relative 'user'
class Dealer < 	User
@@user = User.new
@@user_list = @@user.get_list
@@list_number = 1
	def intro
		p 'Hello welcome to Newland dealers, we hope you enjoy our user friendly system -'
		p 'for browsing our cars, please select your member number from below if you -'
		p 'do not have a member number please enter 0'
		@@user_list.each do |user|
		p @@list_number.to_s + '. ' + user
		@@list_number+=1
		end
		choice = gets.chomp
		@@user.check_choice(choice.to_i)	
	end
end
dealer = Dealer.new
dealer.intro