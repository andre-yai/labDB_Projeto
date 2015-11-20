class FranquiaTemEnderecosController < ApplicationController
  before_action :set_franquia_tem_endereco, only: [:show, :edit, :update, :destroy]

  # GET /franquia_tem_enderecos
  # GET /franquia_tem_enderecos.json
  def index
    @franquia_tem_enderecos = FranquiaTemEndereco.all
  end

  # GET /franquia_tem_enderecos/1
  # GET /franquia_tem_enderecos/1.json
  def show
  end

  # GET /franquia_tem_enderecos/new
  def new
    @franquia_tem_endereco = FranquiaTemEndereco.new
  end

  # GET /franquia_tem_enderecos/1/edit
  def edit
  end

  # POST /franquia_tem_enderecos
  # POST /franquia_tem_enderecos.json
  def create
    @franquia_tem_endereco = FranquiaTemEndereco.new(franquia_tem_endereco_params)

    respond_to do |format|
      if @franquia_tem_endereco.save
        format.html { redirect_to @franquia_tem_endereco, notice: 'Franquia tem endereco was successfully created.' }
        format.json { render :show, status: :created, location: @franquia_tem_endereco }
      else
        format.html { render :new }
        format.json { render json: @franquia_tem_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franquia_tem_enderecos/1
  # PATCH/PUT /franquia_tem_enderecos/1.json
  def update
    respond_to do |format|
      if @franquia_tem_endereco.update(franquia_tem_endereco_params)
        format.html { redirect_to @franquia_tem_endereco, notice: 'Franquia tem endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @franquia_tem_endereco }
      else
        format.html { render :edit }
        format.json { render json: @franquia_tem_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franquia_tem_enderecos/1
  # DELETE /franquia_tem_enderecos/1.json
  def destroy
    @franquia_tem_endereco.destroy
    respond_to do |format|
      format.html { redirect_to franquia_tem_enderecos_url, notice: 'Franquia tem endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franquia_tem_endereco
      @franquia_tem_endereco = FranquiaTemEndereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franquia_tem_endereco_params
      params[:franquia_tem_endereco]
    end
end
