class ProjesController < ApplicationController
  before_action :set_proje, only: [:show, :edit, :update, :destroy]

  # GET /projes
  # GET /projes.json
  def index
    @projes = Proje.all
  end

  # GET /projes/1
  # GET /projes/1.json
  def show
  end

  # GET /projes/new
  def new
    @proje = Proje.new
  end

  # GET /projes/1/edit
  def edit
  end

  # POST /projes
  # POST /projes.json
  def create
    @proje = Proje.new(proje_params)

    respond_to do |format|
      if @proje.save
        format.html { redirect_to @proje, notice: 'Proje was successfully created.' }
        format.json { render :show, status: :created, location: @proje }
      else
        format.html { render :new }
        format.json { render json: @proje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projes/1
  # PATCH/PUT /projes/1.json
  def update
    respond_to do |format|
      if @proje.update(proje_params)
        format.html { redirect_to @proje, notice: 'Proje was successfully updated.' }
        format.json { render :show, status: :ok, location: @proje }
      else
        format.html { render :edit }
        format.json { render json: @proje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projes/1
  # DELETE /projes/1.json
  def destroy
    @proje.destroy
    respond_to do |format|
      format.html { redirect_to projes_url, notice: 'Proje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proje
      @proje = Proje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proje_params
      params.require(:proje).permit(:marka, :urun)
    end
end
