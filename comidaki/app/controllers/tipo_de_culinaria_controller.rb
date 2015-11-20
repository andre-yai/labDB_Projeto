class TipoDeCulinariaController < ApplicationController
  before_action :set_tipo_de_culinarium, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_culinaria
  # GET /tipo_de_culinaria.json
  def index
    @tipo_de_culinaria = TipoDeCulinarium.all
  end

  # GET /tipo_de_culinaria/1
  # GET /tipo_de_culinaria/1.json
  def show
  end

  # GET /tipo_de_culinaria/new
  def new
    @tipo_de_culinarium = TipoDeCulinarium.new
  end

  # GET /tipo_de_culinaria/1/edit
  def edit
  end

  # POST /tipo_de_culinaria
  # POST /tipo_de_culinaria.json
  def create
    @tipo_de_culinarium = TipoDeCulinarium.new(tipo_de_culinarium_params)

    respond_to do |format|
      if @tipo_de_culinarium.save
        format.html { redirect_to @tipo_de_culinarium, notice: 'Tipo de culinarium was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_culinarium }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_culinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_culinaria/1
  # PATCH/PUT /tipo_de_culinaria/1.json
  def update
    respond_to do |format|
      if @tipo_de_culinarium.update(tipo_de_culinarium_params)
        format.html { redirect_to @tipo_de_culinarium, notice: 'Tipo de culinarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_culinarium }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_culinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_culinaria/1
  # DELETE /tipo_de_culinaria/1.json
  def destroy
    @tipo_de_culinarium.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_culinaria_url, notice: 'Tipo de culinarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_culinarium
      @tipo_de_culinarium = TipoDeCulinarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_culinarium_params
      params.require(:tipo_de_culinarium).permit(:nome)
    end
end
