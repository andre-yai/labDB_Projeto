class FranquiaController < ApplicationController
  before_action :set_franquia, only: [:show, :edit, :update, :destroy]

  # GET /franquia
  # GET /franquia.json
  def index
    @franquia = Franquia.all
  end

  # GET /franquia/1
  # GET /franquia/1.json
  def show
  end

  # GET /franquia/new
  def new
    @franquia = Franquia.new
  end

  # GET /franquia/1/edit
  def edit
  end

  # POST /franquia
  # POST /franquia.json
  def create
    @franquia = Franquia.new(franquia_params)

    respond_to do |format|
      if @franquia.save
        format.html { redirect_to @franquia, notice: 'Franquia was successfully created.' }
        format.json { render :show, status: :created, location: @franquia }
      else
        format.html { render :new }
        format.json { render json: @franquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franquia/1
  # PATCH/PUT /franquia/1.json
  def update
    respond_to do |format|
      if @franquia.update(franquia_params)
        format.html { redirect_to @franquia, notice: 'Franquia was successfully updated.' }
        format.json { render :show, status: :ok, location: @franquia }
      else
        format.html { render :edit }
        format.json { render json: @franquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franquia/1
  # DELETE /franquia/1.json
  def destroy
    @franquia.destroy
    respond_to do |format|
      format.html { redirect_to franquia_url, notice: 'Franquia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franquia
      @franquia = Franquia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franquia_params
      params.require(:franquia).permit(:nome, :Faixa_de_preco, :Tempo_de_entrega_estimada, :Custo_de_entrega_km, :Raio_de_entrega, :Nota, :cnpj)
    end
end
