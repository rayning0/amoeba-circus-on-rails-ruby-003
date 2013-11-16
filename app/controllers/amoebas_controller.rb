class AmoebasController < ApplicationController
  before_action :set_amoeba, only: [:show, :edit, :update, :destroy, :split]

  # GET /amoebas
  # GET /amoebas.json
  def index
    @amoebas = Amoeba.all
  end

  # GET /amoebas/1
  # GET /amoebas/1.json
  def show
  end

  # GET /amoebas/new
  def new
    @amoeba = Amoeba.new
    @acts = Act.all
  end

  # GET /amoebas/1/edit
  def edit
    @acts = Act.all
  end

  # POST /amoebas
  # POST /amoebas.json
  def create
    @amoeba = Amoeba.new(amoeba_params)
    @amoeba.update(generation: 1)  # all new amoebas are 1st generation
    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amoeba }
      else
        format.html { render action: 'new' }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amoebas/1
  # PATCH/PUT /amoebas/1.json
  def update
    @amoeba.acts.destroy_all if params[:amoeba][:act_ids] == nil
    respond_to do |format|
      if @amoeba.update(amoeba_params)
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amoebas/1
  # DELETE /amoebas/1.json
  def destroy
    @amoeba.destroy
    respond_to do |format|
      format.html { redirect_to amoebas_url }
      format.json { head :no_content }
    end
  end

  def split
    @amoeba.divide
    redirect_to amoebas_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amoeba
      @amoeba = Amoeba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amoeba_params
      params.require(:amoeba).permit(:name, :generation, :talent_id, act_ids: [])
    end
end
