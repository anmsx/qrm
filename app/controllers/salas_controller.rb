class SalasController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @sala = Sala.new
    @salas = Sala.all
    @page = params[:page]
  end
  
  def index
    @salas = Sala.all
    @salas = Sala.all
  end

  def show
    @sala = Sala.find params[:id]
    @salas = Sala.all
  end
  
  def edit
    @salas = Sala.all
    @sala = Sala.find params[:id]
  end
  
  def destroy
    @salas = Sala.all
    @sala = Sala.find(params[:id]).destroy
    redirect_to(salas_path, :notice => 'Sala excluída com sucesso.')
  end
  
  def update
    @sala = Sala.find(params[:id])
    @sala.update_attributes(params[:sala])
    redirect_to(sala_path(@sala, :page => @page), :notice => 'Sala atualizada com sucesso.') if @sala.valid?
    @salas = Sala.all
    render :action => :edit if !@sala.valid?    
  end
  
  def create
    @salas = Sala.all
    @sala = Sala.new(params[:sala])
    respond_to do |format|
      if @sala.save
        format.html {redirect_to(sala_path(@sala, :page => @page), :notice => 'Sala cadastrada com sucesso.')}
      else
        format.html {render :action => :new}
      end
    end
  end
end
