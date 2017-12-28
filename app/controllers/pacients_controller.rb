class PacientsController < ApplicationController
  def show
    @pacient = Pacient.find(params[:id])
    @consultatii = Consult.where(pacient_id: params[:id])
  end

  def new
    @pacient = Pacient.new
  end

  def create
    @pacient = Pacient.new(pacient_params)
    if @pacient.save
      flash[:success] = "Pacient adaugat!"
      redirect_to @pacient
    else
      render 'new'
    end
  end

  def edit
    @pacient = Pacient.find(params[:id])
  end

  def update
    @pacient = Pacient.find(params[:id])
    if @pacient.update_attributes(pacient_params)
      flash[:success] = "Pacient modificat!"
      redirect_to @pacient
    else
      render 'edit'
    end
  end

  def index
    @pacienti = Pacient.paginate(page: params[:page])
  end

  def destroy
    temp = Pacient.find(params[:id]).nume + ' ' + Pacient.find(params[:id]).prenume
    Pacient.find(params[:id]).destroy
    flash[:success] = "Pacient sters: " + temp
    redirect_to pacienti_path
  end

  private
    def pacient_params
      params.require(:pacient).permit(:nume, :prenume, :varsta, :adresa)
    end

end
