class AdministradorDeRestaurantesController < ApplicationController
  before_action :set_administrador_de_restaurante, only: [:show, :edit, :update, :destroy]

  # GET /administrador_de_restaurantes
  # GET /administrador_de_restaurantes.json
  def index
    @administrador_de_restaurantes = AdministradorDeRestaurante.all
  end

  # GET /administrador_de_restaurantes/1
  # GET /administrador_de_restaurantes/1.json
  def show
  end

  # GET /administrador_de_restaurantes/new
  def new
    @administrador_de_restaurante = AdministradorDeRestaurante.new
  end

  # GET /administrador_de_restaurantes/1/edit
  def edit
  end

  # POST /administrador_de_restaurantes
  # POST /administrador_de_restaurantes.json
  def create
    @administrador_de_restaurante = AdministradorDeRestaurante.new(administrador_de_restaurante_params)

    respond_to do |format|
      if @administrador_de_restaurante.save
        format.html { redirect_to @administrador_de_restaurante, notice: 'Administrador de restaurante was successfully created.' }
        format.json { render :show, status: :created, location: @administrador_de_restaurante }
      else
        format.html { render :new }
        format.json { render json: @administrador_de_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrador_de_restaurantes/1
  # PATCH/PUT /administrador_de_restaurantes/1.json
  def update
    respond_to do |format|
      if @administrador_de_restaurante.update(administrador_de_restaurante_params)
        format.html { redirect_to @administrador_de_restaurante, notice: 'Administrador de restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrador_de_restaurante }
      else
        format.html { render :edit }
        format.json { render json: @administrador_de_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrador_de_restaurantes/1
  # DELETE /administrador_de_restaurantes/1.json
  def destroy
    @administrador_de_restaurante.destroy
    respond_to do |format|
      format.html { redirect_to administrador_de_restaurantes_url, notice: 'Administrador de restaurante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrador_de_restaurante
      @administrador_de_restaurante = AdministradorDeRestaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrador_de_restaurante_params
      params.require(:administrador_de_restaurante).permit(:cpf, :cnpj)
    end
end
