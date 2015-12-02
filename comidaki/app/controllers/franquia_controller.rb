class FranquiaController < ApplicationController
  before_action :set_franquium, only: [:show, :edit, :update, :destroy]

  # GET /franquia
  # GET /franquia.json
  def index
    @franquia = Franquium.all
  end

  # GET /franquia/1
  # GET /franquia/1.json
  def show
  end

  # GET /franquia/new
  def new
    @franquium = Franquium.new
    @restaurantes = Restaurante.all
  end

  # GET /franquia/1/edit
  def edit
  end

  # POST /franquia
  # POST /franquia.json
  def create
    @franquium = Franquium.new(franquium_params)

    respond_to do |format|
      if @franquium.save
        format.html { redirect_to @franquium, notice: 'Franquium was successfully created.' }
        format.json { render :show, status: :created, location: @franquium }
      else
        format.html { render :new }
        format.json { render json: @franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franquia/1
  # PATCH/PUT /franquia/1.json
  def update
    respond_to do |format|
      if @franquium.update(franquium_params)
        format.html { redirect_to @franquium, notice: 'Franquium was successfully updated.' }
        format.json { render :show, status: :ok, location: @franquium }
      else
        format.html { render :edit }
        format.json { render json: @franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franquia/1
  # DELETE /franquia/1.json
  def destroy
    @franquium.destroy
    respond_to do |format|
      format.html { redirect_to franquia_url, notice: 'Franquium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franquium
      @franquium = Franquium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franquium_params
      params.require(:franquium).permit(:nome, :faixa_preco, :tempo_entrega_estimado, :custo_entrega_km, :raio_entrega, :nota, :cnpj)
    end
end
