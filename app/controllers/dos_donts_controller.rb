class DosDontsController < ApplicationController
  before_action :set_dos_dont, only: [:show, :edit, :update, :destroy]

  # GET /dos_donts
  # GET /dos_donts.json
  def index
    @dos_donts = DosDont.all
  end

  # GET /dos_donts/1
  # GET /dos_donts/1.json
  def show
  end

  # GET /dos_donts/new
  def new
    @dos_dont = DosDont.new
  end

  # GET /dos_donts/1/edit
  def edit
  end

  # POST /dos_donts
  # POST /dos_donts.json
  def create
    @dos_dont = DosDont.new(dos_dont_params)

    respond_to do |format|
      if @dos_dont.save
        format.html { redirect_to @dos_dont, notice: 'Dos dont was successfully created.' }
        format.json { render :show, status: :created, location: @dos_dont }
      else
        format.html { render :new }
        format.json { render json: @dos_dont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dos_donts/1
  # PATCH/PUT /dos_donts/1.json
  def update
    respond_to do |format|
      if @dos_dont.update(dos_dont_params)
        format.html { redirect_to @dos_dont, notice: 'Dos dont was successfully updated.' }
        format.json { render :show, status: :ok, location: @dos_dont }
      else
        format.html { render :edit }
        format.json { render json: @dos_dont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dos_donts/1
  # DELETE /dos_donts/1.json
  def destroy
    @dos_dont.destroy
    respond_to do |format|
      format.html { redirect_to dos_donts_url, notice: 'Dos dont was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dos_dont
      @dos_dont = DosDont.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dos_dont_params
      params.require(:dos_dont).permit(:title, :category, :content)
    end
end
