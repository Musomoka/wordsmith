class DialectsController < ApplicationController
	before_action :set_dialect, only: [:show, :edit, :update, :destroy]
   def dialects
    language_id = @language.id
    @dialects = Dialect.find(params[anguage_id])
  end

  def show


    
  end

  def index
    @dialects = Dialect.all
  end

  def new
  	@dialect = @dialect.create
  end
  
    
    def create
    	
    	@dialect = @dialect.new(dialect_params)
      @dialect.id = 
         respond_to do |format|
    		if @dialect.save
        format.html { redirect_to @dialect, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @dialect }
      else
		
			render :show, notice: 'Dialect was unsuccessfully created.' 
		  end
    end
  end
	

  private



    def set_dialect
        @dialect=Dialect.find(params[:id])
    end

    def dialect_params
    	params.require(:dialect).permit(:dialect_name,:description, :language_id,:language=>[:name,:country_id])
    end
end
