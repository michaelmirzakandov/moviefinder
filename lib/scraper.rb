require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper


    def self.scrape_page(zip)
        movies = []
        url = "https://www.imdb.com/showtimes/US/#{zip}"
        doc = Nokogiri::HTML(URI.open(url))
        movie_address = doc.css("#cinemas-at-list > div:nth-child(2) > div.address").text
        doc.css("#cinemas-at-list > div:nth-child(2) > div.list_item").each do |movie|
            movie_name = movie.css("div.info > h4 > span").text
            next_movie_time = movie.css("div.info > div > a:nth-child(2)").text
            movie_runtime = movie.css("div.info > p > time").text
            movies << {name: movie_name, location: movie_address, time: next_movie_time, runtime: movie_runtime}
        end
        movies
    end



end
