class MedicsController < ApplicationController
  def show
    @medic = Medic.find(params[:id])
  end

  def new
    @medic = Medic.new
  end

  def create
    @medic = Medic.new(medic_params)
    if @medic.save
      flash[:success] = "Medic adaugat!"
      redirect_to @medic
    else
      render 'new'
    end
  end

  def edit
    @medic = Medic.find(params[:id])
  end

  def update
    @medic = Medic.find(params[:id])
    if @medic.update_attributes(medic_params)
      flash[:success] = "Medic modificat!"
      redirect_to @medic
    else
      render 'edit'
    end
  end

  def index
    @medici = Medic.paginate(page: params[:page])
  end

  def destroy
    temp = Medic.find(params[:id]).nume + ' ' + Medic.find(params[:id]).prenume
    Medic.find(params[:id]).destroy
    flash[:success] = "Medic sters: " + temp
    redirect_to medici_path
  end

  private
    def medic_params
      params.require(:medic).permit(:nume, :prenume, :sectie)
    end
end
