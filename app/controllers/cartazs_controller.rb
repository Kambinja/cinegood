class CartazsController < ApplicationController
  before_action :set_cartaz, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index, :show]

  # GET /cartazs
  # GET /cartazs.json
  def index
    @cartazs = Cartaz.all
  end

  # GET /cartazs/1
  # GET /cartazs/1.json
  def show
  end

  # GET /cartazs/new
  def new
    @cartaz = Cartaz.new
  end

  # GET /cartazs/1/edit
  def edit
  end

  # POST /cartazs
  # POST /cartazs.json
  def create
    @cartaz = Cartaz.new(cartaz_params)
      if @cartaz.save                 
        redirect_to @cartaz, notice: 'Cartaz criado com sucesso.'
        else
          render action: 'new'
      end
    end

  # PATCH/PUT /cartazs/1
  # PATCH/PUT /cartazs/1.json
  def update
        if @cartaz.update(cartaz_params)
          redirect_to @cartaz, notice: 'O cartaz foi actualizado com sucesso.'
        else
          render action: 'edit'
      end
    end

  # DELETE /cartazs/1
  # DELETE /cartazs/1.json
  def destroy
    @cartaz.destroy
      redirect_to cartazs_url, notice: 'Cartaz eliminadado.'
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartaz
      @cartaz = Cartaz.find(params[:id])
    end
    
    def correct_usuario
      @cartaz = current_usuario.cartazs.find_by(id: params[:id])
      redirect_to cartazs_path, notice: 'precedimento nao autorizado' if @cartaz.nil?
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def cartaz_params
      params.require(:cartaz).permit(:imagem, :titulo, :sinopse, :cinema, :image)
      end
    end
