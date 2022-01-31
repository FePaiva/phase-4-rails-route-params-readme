class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using the ID and 
    cheese = Cheese.find_by(id: params[:id])
    
    # send json response using tht cheese object
    render json: cheese
  end

end
