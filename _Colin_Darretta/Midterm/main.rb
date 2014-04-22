require './lib/reddit'

puts 'clear'
puts "Welcome to Reddit search."

reddit = Reddit.new
reddit.print_selected_stories