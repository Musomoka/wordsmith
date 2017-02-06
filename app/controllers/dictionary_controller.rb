class DictionaryController < ApplicationController
  def index
    @dictionaries=Dictionary.all
  end

  def show
    @dictionary=Dictionary.find(params[:id])
    
  end

  def new
  end
  
   def user_params
        params.require(:dictionary).permit(:word, :defination, :word_class_id, :language_id)
    end
end
