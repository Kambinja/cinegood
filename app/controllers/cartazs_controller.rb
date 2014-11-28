class CartazsController < ApplicationController
  before_action :set_cartaz, only: [:show, :edit, :update, :destroy]

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

    respond_to do |format|
      if @cartaz.save
        format.html { redirect_to @cartaz, notice: 'Cartaz was successfully created.' }
        format.json { render :show, status: :created, location: @cartaz }
      else
        format.html { render :new }
        format.json { render json: @cartaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartazs/1
  # PATCH/PUT /cartazs/1.json
  def update
    respond_to do |format|
      if @cartaz.update(cartaz_params)
        format.html { redirect_to @cartaz, notice: 'Cartaz was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartaz }
      else
        format.html { render :edit }
        format.json { render json: @cartaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartazs/1
  # DELETE /cartazs/1.json
  def destroy
    @cartaz.destroy
    respond_to do |format|
      format.html { redirect_to cartazs_url, notice: 'Cartaz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartaz
      @cartaz = Cartaz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartaz_params
      params.require(:cartaz).permit(:imagem, :titulo, :sinopse, :cinema)
    end
end
