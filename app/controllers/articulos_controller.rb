class ArticulosController < ApplicationController
  
  def index
    @articulos=Articulo.all.order("created_at DESC")
  end

  def new
    @articulo = Articulo.new
  end

  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      redirect_to @articulo
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    @articulo=Articulo.find(params[:id])
  end

  def destroy
  end

  private 
  def articulo_params
    params.require(:articulo).permit(:titulo,:contenido)
  end
end
