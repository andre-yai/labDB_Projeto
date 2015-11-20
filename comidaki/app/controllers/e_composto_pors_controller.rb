class ECompostoPorsController < ApplicationController
  before_action :set_e_composto_por, only: [:show, :edit, :update, :destroy]

  # GET /e_composto_pors
  # GET /e_composto_pors.json
  def index
    @e_composto_pors = ECompostoPor.all
  end

  # GET /e_composto_pors/1
  # GET /e_composto_pors/1.json
  def show
  end

  # GET /e_composto_pors/new
  def new
    @e_composto_por = ECompostoPor.new
  end

  # GET /e_composto_pors/1/edit
  def edit
  end

  # POST /e_composto_pors
  # POST /e_composto_pors.json
  def create
    @e_composto_por = ECompostoPor.new(e_composto_por_params)

    respond_to do |format|
      if @e_composto_por.save
        format.html { redirect_to @e_composto_por, notice: 'E composto por was successfully created.' }
        format.json { render :show, status: :created, location: @e_composto_por }
      else
        format.html { render :new }
        format.json { render json: @e_composto_por.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_composto_pors/1
  # PATCH/PUT /e_composto_pors/1.json
  def update
    respond_to do |format|
      if @e_composto_por.update(e_composto_por_params)
        format.html { redirect_to @e_composto_por, notice: 'E composto por was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_composto_por }
      else
        format.html { render :edit }
        format.json { render json: @e_composto_por.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_composto_pors/1
  # DELETE /e_composto_pors/1.json
  def destroy
    @e_composto_por.destroy
    respond_to do |format|
      format.html { redirect_to e_composto_pors_url, notice: 'E composto por was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_composto_por
      @e_composto_por = ECompostoPor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_composto_por_params
      params.require(:e_composto_por).permit(:id_prato, :id_ingrediente)
    end
end
