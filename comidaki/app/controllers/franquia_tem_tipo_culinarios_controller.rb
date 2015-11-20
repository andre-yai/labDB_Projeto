class FranquiaTemTipoCulinariosController < ApplicationController
  before_action :set_franquia_tem_tipo_culinario, only: [:show, :edit, :update, :destroy]

  # GET /franquia_tem_tipo_culinarios
  # GET /franquia_tem_tipo_culinarios.json
  def index
    @franquia_tem_tipo_culinarios = FranquiaTemTipoCulinario.all
  end

  # GET /franquia_tem_tipo_culinarios/1
  # GET /franquia_tem_tipo_culinarios/1.json
  def show
  end

  # GET /franquia_tem_tipo_culinarios/new
  def new
    @franquia_tem_tipo_culinario = FranquiaTemTipoCulinario.new
  end

  # GET /franquia_tem_tipo_culinarios/1/edit
  def edit
  end

  # POST /franquia_tem_tipo_culinarios
  # POST /franquia_tem_tipo_culinarios.json
  def create
    @franquia_tem_tipo_culinario = FranquiaTemTipoCulinario.new(franquia_tem_tipo_culinario_params)

    respond_to do |format|
      if @franquia_tem_tipo_culinario.save
        format.html { redirect_to @franquia_tem_tipo_culinario, notice: 'Franquia tem tipo culinario was successfully created.' }
        format.json { render :show, status: :created, location: @franquia_tem_tipo_culinario }
      else
        format.html { render :new }
        format.json { render json: @franquia_tem_tipo_culinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franquia_tem_tipo_culinarios/1
  # PATCH/PUT /franquia_tem_tipo_culinarios/1.json
  def update
    respond_to do |format|
      if @franquia_tem_tipo_culinario.update(franquia_tem_tipo_culinario_params)
        format.html { redirect_to @franquia_tem_tipo_culinario, notice: 'Franquia tem tipo culinario was successfully updated.' }
        format.json { render :show, status: :ok, location: @franquia_tem_tipo_culinario }
      else
        format.html { render :edit }
        format.json { render json: @franquia_tem_tipo_culinario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franquia_tem_tipo_culinarios/1
  # DELETE /franquia_tem_tipo_culinarios/1.json
  def destroy
    @franquia_tem_tipo_culinario.destroy
    respond_to do |format|
      format.html { redirect_to franquia_tem_tipo_culinarios_url, notice: 'Franquia tem tipo culinario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franquia_tem_tipo_culinario
      @franquia_tem_tipo_culinario = FranquiaTemTipoCulinario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franquia_tem_tipo_culinario_params
      params.require(:franquia_tem_tipo_culinario).permit(:cnpj, :nome)
    end
end
