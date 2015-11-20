class PedidoTemPratosController < ApplicationController
  before_action :set_pedido_tem_prato, only: [:show, :edit, :update, :destroy]

  # GET /pedido_tem_pratos
  # GET /pedido_tem_pratos.json
  def index
    @pedido_tem_pratos = PedidoTemPrato.all
  end

  # GET /pedido_tem_pratos/1
  # GET /pedido_tem_pratos/1.json
  def show
  end

  # GET /pedido_tem_pratos/new
  def new
    @pedido_tem_prato = PedidoTemPrato.new
  end

  # GET /pedido_tem_pratos/1/edit
  def edit
  end

  # POST /pedido_tem_pratos
  # POST /pedido_tem_pratos.json
  def create
    @pedido_tem_prato = PedidoTemPrato.new(pedido_tem_prato_params)

    respond_to do |format|
      if @pedido_tem_prato.save
        format.html { redirect_to @pedido_tem_prato, notice: 'Pedido tem prato was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_tem_prato }
      else
        format.html { render :new }
        format.json { render json: @pedido_tem_prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_tem_pratos/1
  # PATCH/PUT /pedido_tem_pratos/1.json
  def update
    respond_to do |format|
      if @pedido_tem_prato.update(pedido_tem_prato_params)
        format.html { redirect_to @pedido_tem_prato, notice: 'Pedido tem prato was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_tem_prato }
      else
        format.html { render :edit }
        format.json { render json: @pedido_tem_prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_tem_pratos/1
  # DELETE /pedido_tem_pratos/1.json
  def destroy
    @pedido_tem_prato.destroy
    respond_to do |format|
      format.html { redirect_to pedido_tem_pratos_url, notice: 'Pedido tem prato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_tem_prato
      @pedido_tem_prato = PedidoTemPrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_tem_prato_params
      params.require(:pedido_tem_prato).permit(:quantidade, :id_pedido, :id_prato)
    end
end
