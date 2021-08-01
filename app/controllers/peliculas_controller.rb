class PeliculasController < ApplicationController
  before_action :set_pelicula, only: [:edit, :update, :show, :destroy]
  def index
    @peliculas = Pelicula.all  
  end

  def show
  end

  def new
    @pelicula = Pelicula.new
    @category = ["chinese", "italian", "japanese", "french", "belgian"]

  end

  def create 
    @pelicula = Pelicula.create(pelicula_params)
    @pelicula.save

    redirect_to pelicula_path(@pelicula)
  end

  def edit
    @category = ["chinese", "italian", "japanese", "french", "belgian"]
  end

  def update
    @pelicula.update(pelicula_params)
    redirect_to pelicula_path
  end

  def destroy
    @pelicula.destroy
    redirect_to peliculas_path
  end
  private

  def pelicula_params
    params.require(:pelicula).permit(:name, :genero)  
  end

  def set_pelicula
    @pelicula = Pelicula.find(params[:id])
  end
end
