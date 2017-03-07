class DialectsController < ApplicationController
	before_action :set_dialect, only: [:show, :edit, :update, :destroy]
  before_action :set_language
   def dialect_partial
     
    @dialects = Dialects.all
  end

  def show
  end

  def index
    @dialects = Dialect.all
  end

  def new
  	@dialect = @language.dialects.build
  end
  
    
  def create
    	
    @dialect = @language.dialects.build(dialect_params)
   
   
  	if @dialect.save
       redirect_to @language, notice: 'Category was successfully created.' 
     
     else
	
		  render :new, notice: 'Dialect was unsuccessfully created.' 
	   end
   
  end
	

  private

  

    def set_dialect
        @dialect=Dialect.find(params[:id])
    end
  def set_language
  @language = Language.find(params[:language_id])
  end

    def dialect_params
    	params.require(:dialect).permit(:dialect_name,:description, :language_id,:language=>[:name,:country_id])
    end
end
