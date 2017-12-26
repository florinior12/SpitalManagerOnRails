class ConsultsController < ApplicationController
  def show
    @consult = Consult.find(params[:id])
  end

  def new
    @consult = Consult.new
  end

  def create
    @consult = Consult.new(consult_params)
    if @consult.save
      flash[:success] = "Consultatie adaugata!"
      redirect_to consults_path
    else
      render 'new'
    end
  end

  def edit
    @consult = Consult.find(params[:id])
  end

  def update
    @consult = Consult.find(params[:id])
    if @consult.update_attributes(consult_params)
      flash[:success] = "Consultatie modificata!"
      redirect_to consults_path
    else
      render 'edit'
    end
  end

  def index
    @consults = Consult.paginate(page: params[:page])
  end

  def destroy
    Medic.find(params[:id]).destroy
    flash[:success] = "Consultatie stearsa"
    redirect_to consults_path
  end

  private
    def consult_params
      params.require(:consult).permit(:medic_id, :pacient_id, :diagnostic, :data)
    end
end
