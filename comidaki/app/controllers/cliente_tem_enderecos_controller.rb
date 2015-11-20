class ClienteTemEnderecosController < ApplicationController
  before_action :set_cliente_tem_endereco, only: [:show, :edit, :update, :destroy]

  # GET /cliente_tem_enderecos
  # GET /cliente_tem_enderecos.json
  def index
    @cliente_tem_enderecos = ClienteTemEndereco.all
  end

  # GET /cliente_tem_enderecos/1
  # GET /cliente_tem_enderecos/1.json
  def show
  end

  # GET /cliente_tem_enderecos/new
  def new
    @cliente_tem_endereco = ClienteTemEndereco.new
  end

  # GET /cliente_tem_enderecos/1/edit
  def edit
  end

  # POST /cliente_tem_enderecos
  # POST /cliente_tem_enderecos.json
  def create
    @cliente_tem_endereco = ClienteTemEndereco.new(cliente_tem_endereco_params)

    respond_to do |format|
      if @cliente_tem_endereco.save
        format.html { redirect_to @cliente_tem_endereco, notice: 'Cliente tem endereco was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_tem_endereco }
      else
        format.html { render :new }
        format.json { render json: @cliente_tem_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_tem_enderecos/1
  # PATCH/PUT /cliente_tem_enderecos/1.json
  def update
    respond_to do |format|
      if @cliente_tem_endereco.update(cliente_tem_endereco_params)
        format.html { redirect_to @cliente_tem_endereco, notice: 'Cliente tem endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_tem_endereco }
      else
        format.html { render :edit }
        format.json { render json: @cliente_tem_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_tem_enderecos/1
  # DELETE /cliente_tem_enderecos/1.json
  def destroy
    @cliente_tem_endereco.destroy
    respond_to do |format|
      format.html { redirect_to cliente_tem_enderecos_url, notice: 'Cliente tem endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_tem_endereco
      @cliente_tem_endereco = ClienteTemEndereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_tem_endereco_params
      params[:cliente_tem_endereco]
    end
end
