class DictionariesController < ApplicationController


def index
	@dictionaries = Dictionary.all
end


end
