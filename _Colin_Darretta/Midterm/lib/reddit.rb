require './lib/input'
require 'json'
require 'rest-client'

class Reddit
	attr_accessor :upvotes

	def initialize
		@upvotes = UpvoteInput.new.number
		if @upvotes <= 0
			raise "That is not a valid input: #{@upvotes}"
		else
			puts "Cool, let's get started."
		end
	end

	def print_selected_stories

		show_stories relevant_stories
	
	end

	def relevant_stories
		get_from_reddit.select { |story| story[:upvotes] >= @upvotes }
	end

	def get_from_reddit
		 response = JSON.load(RestClient.get('http://www.reddit.com/.json'))

		response["data"]["children"].map do |entry|
		   	{title: entry["data"]["title"], category: entry["data"]["subreddit"], upvotes: entry["data"]["ups"]}
		end
	end
end	


def show_stories(stories)
 stories.map do |story|
   puts "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
 end
end

