class ESubtiposController < ApplicationController
  before_action :set_e_subtipo, only: [:show, :edit, :update, :destroy]

  # GET /e_subtipos
  # GET /e_subtipos.json
  def index
    @e_subtipos = ESubtipo.all
  end

  # GET /e_subtipos/1
  # GET /e_subtipos/1.json
  def show
  end

  # GET /e_subtipos/new
  def new
    @e_subtipo = ESubtipo.new
  end

  # GET /e_subtipos/1/edit
  def edit
  end

  # POST /e_subtipos
  # POST /e_subtipos.json
  def create
    @e_subtipo = ESubtipo.new(e_subtipo_params)

    respond_to do |format|
      if @e_subtipo.save
        format.html { redirect_to @e_subtipo, notice: 'E subtipo was successfully created.' }
        format.json { render :show, status: :created, location: @e_subtipo }
      else
        format.html { render :new }
        format.json { render json: @e_subtipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_subtipos/1
  # PATCH/PUT /e_subtipos/1.json
  def update
    respond_to do |format|
      if @e_subtipo.update(e_subtipo_params)
        format.html { redirect_to @e_subtipo, notice: 'E subtipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_subtipo }
      else
        format.html { render :edit }
        format.json { render json: @e_subtipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_subtipos/1
  # DELETE /e_subtipos/1.json
  def destroy
    @e_subtipo.destroy
    respond_to do |format|
      format.html { redirect_to e_subtipos_url, notice: 'E subtipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_subtipo
      @e_subtipo = ESubtipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_subtipo_params
      params.require(:e_subtipo).permit(:nome, :nome_subtipo, :id_subtipo)
    end
end
