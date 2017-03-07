class DictionariesController < ApplicationController


	def index
		@dictionaries = Dictionary.all
	end

	def new
		@dictionary=Dictionary.new
	end




end
