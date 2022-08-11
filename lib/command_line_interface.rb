require_relative "./scraper.rb"
require_relative "./movie.rb"

puts "Welcome to moviefinder, enter zip code for movies near you and next runtime"

zip = gets.chomp

movies = Scraper.scrape_page(zip)
Movie.create_from_collection(movies)
puts "Your closest theater is " + Movie.all[0].theater
puts "Your theaters information is " + Movie.all[0].location
puts "movies playing are..."
Movie.all.each do |movie|
    puts "name:" + movie.name
    puts "first showtime:" + movie.time
    puts "runtime:" + movie.runtime
    puts "---------------------"
end

