class ThingsController < ApplicationController
  
  def index
    @things = Thing.all
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.create(thing_params)
    redirect_to things_path
  end

  def edit
    @thing = Thing.find(params[:id])
  end

  def update
    @thing = Thing.find(params[:id])
      if @thing.update(thing_params)
      else
        render 'edit'
      end
    redirect_to things_path
  end

  def show
    @thing = Thing.find(params[:id])
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy
    redirect_to things_path
  end

  def thing_params
    params.require(:thing).permit(:name, :date, :description, :thingness)
  end
end
