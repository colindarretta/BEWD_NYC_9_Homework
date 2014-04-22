class UpvoteInput
	attr_accessor :number

	def initialize
		puts "Welcome. Please search a minimum number of upvotes you would like your stories to have."
		puts "What is your number?"
		@number = Integer(gets.chomp)
	end
end