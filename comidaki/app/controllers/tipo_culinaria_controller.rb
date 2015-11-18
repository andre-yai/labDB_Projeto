class TipoCulinariaController < ApplicationController
  before_action :set_tipo_culinarium, only: [:show, :edit, :update, :destroy]

  # GET /tipo_culinaria
  # GET /tipo_culinaria.json
  def index
    @tipo_culinaria = TipoCulinarium.all
  end

  # GET /tipo_culinaria/1
  # GET /tipo_culinaria/1.json
  def show
  end

  # GET /tipo_culinaria/new
  def new
    @tipo_culinarium = TipoCulinarium.new
  end

  # GET /tipo_culinaria/1/edit
  def edit
  end

  # POST /tipo_culinaria
  # POST /tipo_culinaria.json
  def create
    @tipo_culinarium = TipoCulinarium.new(tipo_culinarium_params)

    respond_to do |format|
      if @tipo_culinarium.save
        format.html { redirect_to @tipo_culinarium, notice: 'Tipo culinarium was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_culinarium }
      else
        format.html { render :new }
        format.json { render json: @tipo_culinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_culinaria/1
  # PATCH/PUT /tipo_culinaria/1.json
  def update
    respond_to do |format|
      if @tipo_culinarium.update(tipo_culinarium_params)
        format.html { redirect_to @tipo_culinarium, notice: 'Tipo culinarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_culinarium }
      else
        format.html { render :edit }
        format.json { render json: @tipo_culinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_culinaria/1
  # DELETE /tipo_culinaria/1.json
  def destroy
    @tipo_culinarium.destroy
    respond_to do |format|
      format.html { redirect_to tipo_culinaria_url, notice: 'Tipo culinarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_culinarium
      @tipo_culinarium = TipoCulinarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_culinarium_params
      params.require(:tipo_culinarium).permit(:nome)
    end
end
