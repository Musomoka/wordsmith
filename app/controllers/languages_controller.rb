class LanguagesController < ApplicationController
 before_action :set_language, only: [:show, :edit, :update, :destroy]
 
 def index
 @languages = Language.all
 end

 
  def new
  @language = Language.new
  end
  
  def create

    @language = Language.new(language_params)
    if @language.save?
      flash[:success] = "Language Succesfully Saved, add some Dialects"
      
      redirect_to @language 
      
    else
      
      render :new
      
    end
  end
  
  def show
    
  end
private

  

  def set_language
    @language=Language.find(params[:id])

  end

  def language_params
    params.require(:language).permit(:name,:country,:description)
  end
end