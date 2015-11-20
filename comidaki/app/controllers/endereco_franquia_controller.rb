class EnderecoFranquiaController < ApplicationController
  before_action :set_endereco_franquium, only: [:show, :edit, :update, :destroy]

  # GET /endereco_franquia
  # GET /endereco_franquia.json
  def index
    @endereco_franquia = EnderecoFranquium.all
  end

  # GET /endereco_franquia/1
  # GET /endereco_franquia/1.json
  def show
  end

  # GET /endereco_franquia/new
  def new
    @endereco_franquium = EnderecoFranquium.new
  end

  # GET /endereco_franquia/1/edit
  def edit
  end

  # POST /endereco_franquia
  # POST /endereco_franquia.json
  def create
    @endereco_franquium = EnderecoFranquium.new(endereco_franquium_params)

    respond_to do |format|
      if @endereco_franquium.save
        format.html { redirect_to @endereco_franquium, notice: 'Endereco franquium was successfully created.' }
        format.json { render :show, status: :created, location: @endereco_franquium }
      else
        format.html { render :new }
        format.json { render json: @endereco_franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_franquia/1
  # PATCH/PUT /endereco_franquia/1.json
  def update
    respond_to do |format|
      if @endereco_franquium.update(endereco_franquium_params)
        format.html { redirect_to @endereco_franquium, notice: 'Endereco franquium was successfully updated.' }
        format.json { render :show, status: :ok, location: @endereco_franquium }
      else
        format.html { render :edit }
        format.json { render json: @endereco_franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_franquia/1
  # DELETE /endereco_franquia/1.json
  def destroy
    @endereco_franquium.destroy
    respond_to do |format|
      format.html { redirect_to endereco_franquia_url, notice: 'Endereco franquium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_franquium
      @endereco_franquium = EnderecoFranquium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_franquium_params
      params[:endereco_franquium]
    end
end
