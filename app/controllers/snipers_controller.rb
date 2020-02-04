class SnipersController < ApplicationController
  before_action :set_sniper, only: [:show, :edit, :update, :destroy]

  # GET /snipers
  # GET /snipers.json
  def index
    @snipers = Sniper.all
  end

  # GET /snipers/1
  # GET /snipers/1.json
  def show
  end

  # GET /snipers/new
  def new
    @sniper = Sniper.new
  end

  # GET /snipers/1/edit
  def edit
  end

  # POST /snipers
  # POST /snipers.json
  def create
    @sniper = Sniper.new(sniper_params)

    respond_to do |format|
      if @sniper.save
        format.html { redirect_to @sniper, notice: 'Sniper was successfully created.' }
        format.json { render :show, status: :created, location: @sniper }
      else
        format.html { render :new }
        format.json { render json: @sniper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snipers/1
  # PATCH/PUT /snipers/1.json
  def update
    respond_to do |format|
      if @sniper.update(sniper_params)
        format.html { redirect_to @sniper, notice: 'Sniper was successfully updated.' }
        format.json { render :show, status: :ok, location: @sniper }
      else
        format.html { render :edit }
        format.json { render json: @sniper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snipers/1
  # DELETE /snipers/1.json
  def destroy
    @sniper.destroy
    respond_to do |format|
      format.html { redirect_to snipers_url, notice: 'Sniper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sniper
      @sniper = Sniper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sniper_params
      params.require(:sniper).permit(:title, :language, :contents)
    end
end
