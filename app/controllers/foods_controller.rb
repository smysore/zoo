class FoodsController < ApplicationController
  #want our vendor to be able to do HTTP GET /foods

    def index
      @foods = Food.all

      respond_to do |format|      
        format.xml  { render :xml => @foods }
        format.json { render :json => @foods}
        format.html 
      end
    end

    
    def show 
      @food = Food.find(params[:id])
      respond_to do |format|      
        format.xml  { render :xml => @food }
        format.json { render :json => @food}
      end
    end

end
