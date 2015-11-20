class HorarioDeFuncionamentosController < ApplicationController
  before_action :set_horario_de_funcionamento, only: [:show, :edit, :update, :destroy]

  # GET /horario_de_funcionamentos
  # GET /horario_de_funcionamentos.json
  def index
    @horario_de_funcionamentos = HorarioDeFuncionamento.all
  end

  # GET /horario_de_funcionamentos/1
  # GET /horario_de_funcionamentos/1.json
  def show
  end

  # GET /horario_de_funcionamentos/new
  def new
    @horario_de_funcionamento = HorarioDeFuncionamento.new
  end

  # GET /horario_de_funcionamentos/1/edit
  def edit
  end

  # POST /horario_de_funcionamentos
  # POST /horario_de_funcionamentos.json
  def create
    @horario_de_funcionamento = HorarioDeFuncionamento.new(horario_de_funcionamento_params)

    respond_to do |format|
      if @horario_de_funcionamento.save
        format.html { redirect_to @horario_de_funcionamento, notice: 'Horario de funcionamento was successfully created.' }
        format.json { render :show, status: :created, location: @horario_de_funcionamento }
      else
        format.html { render :new }
        format.json { render json: @horario_de_funcionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horario_de_funcionamentos/1
  # PATCH/PUT /horario_de_funcionamentos/1.json
  def update
    respond_to do |format|
      if @horario_de_funcionamento.update(horario_de_funcionamento_params)
        format.html { redirect_to @horario_de_funcionamento, notice: 'Horario de funcionamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @horario_de_funcionamento }
      else
        format.html { render :edit }
        format.json { render json: @horario_de_funcionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horario_de_funcionamentos/1
  # DELETE /horario_de_funcionamentos/1.json
  def destroy
    @horario_de_funcionamento.destroy
    respond_to do |format|
      format.html { redirect_to horario_de_funcionamentos_url, notice: 'Horario de funcionamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horario_de_funcionamento
      @horario_de_funcionamento = HorarioDeFuncionamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horario_de_funcionamento_params
      params.require(:horario_de_funcionamento).permit(:dia, :hora, :cnpj)
    end
end
