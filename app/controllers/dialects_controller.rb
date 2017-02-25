class DialectsController < ApplicationController
	before_action :set_dialect, only: [:show, :edit, :update, :destroy]
   def index
    @dialects = Dialect.all
  end

def show
end

    def new
    	@dialect = Dialect.new
    end
    
    
    def create
    	
    	@dialect = Dialect.new(dialect_params)
         respond_to do |format|
    		if @dialect.save
        format.html { redirect_to @dialect, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @dialect }
      else
		
			render :index, notice: 'Dialect was unsuccessfully created.' 
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
