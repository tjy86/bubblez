class HomeController < ApplicationController

	def index
	end

	def scrape
		url = params[:url]
		@response = HTTParty.get(url)
		$responses = @response.split
	end

	def sort
		@tree = Tree.new
		$responses.each do |t|
			@tree.insert(t)
		end
		@tree.sort
		binding.pry

	end


end