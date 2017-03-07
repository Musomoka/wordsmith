class LanguagesController < ApplicationController
 before_action :set_language, only: [:show, :edit, :update, :destroy]
 
 
 def index
 @languages = Language.all
 end

 
  def new
  @language = Language.new
  end
  
  def create

    @language=Language.new(language_params)


    if @language.save
      
      
      redirect_to @language
      flash[:success] = "Language Succesfully Saved, add some Dialects"
      
    else
      
      render :new
      
    end
  end
  
  def show
    @dialect = Dialect.new
    language_id = @language
    

  end


  def edit
  end

  def update
   @language.update(language_params)
    if @language.save

      flash[:success] = "Language Succesfully updated, add some Dialects"
      
      redirect_to language_url(@language) 
      
    else
      
      render :new
      
    end
  end
 

  def destroy
    @language.destroy
      redirect_to @lagnuages_url, notice: 'Languages was successfully destroyed.' 
 end


private

  

  def set_language
    @language = Language.find(params[:id])
    

  end

  def language_params
    params.require(:language).permit(:name,:country,:description)
  end
end