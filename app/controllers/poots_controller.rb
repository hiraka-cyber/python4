class PootsController < ApplicationController
  def index
    @poots = Poot.all
  end

  def new

    @poot = Poot.new
  end

  def create
    poot = Poot.create(poot_params)
    redirect_to poot
  end

  def show
    @poot = Poot.find(params[:id])
  end

  def edit
    @poot = Poot.find(params[:id])
  end

  def update
    poot = Poot.find(params[:id])
    poot.update(poot_params)
    redirect_to poot
  end

  def destroy
    poot = Poot.find(params[:id])
    poot.delete
    redirect_to poots_path
  end

  private

  def poot_params
    params.require(:poot).permit(:item,:feature,:location,:deliver,:name,:title,:content)
  end
end
