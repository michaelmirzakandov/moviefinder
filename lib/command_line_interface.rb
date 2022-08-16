#!/usr/bin/env ruby
require_relative "./scraper.rb"
require_relative "./movie.rb"

class CommandLineInterface

    def run
        zip = nil
        while zip != "exit"
            get_zip
            scrape
            display_results
            get_zip
        end
    end

    def get_zip
        puts "Welcome to moviefinder, enter zip code for movies near you and next runtime"
        puts "Type exit to exit."
        zip = gets.chomp
    end
    
    def scrape
        movies = Scraper.scrape_page(zip)
        Movie.create_from_collection(movies)
    end

    def display_results
        puts "Your closest theater is " + Movie.all[0].theater
        puts "Your theaters information is " + Movie.all[0].location
        puts "movies playing are..."
        Movie.all.each do |movie|
            puts "name:" + movie.name
            puts "first showtime:" + movie.time
            puts "runtime:" + movie.runtime
            puts "---------------------"
        end
    end

end







