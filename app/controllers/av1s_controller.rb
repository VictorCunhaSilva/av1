class Av1sController < ApplicationController
  before_action :set_av1, only: [:show, :edit, :update, :destroy]

  # GET /av1s
  # GET /av1s.json
  def index
    @av1s = Av1.all
  end

  # GET /av1s/1
  # GET /av1s/1.json
  def show
  end

  # GET /av1s/new
  def new
    @av1 = Av1.new
  end

  # GET /av1s/1/edit
  def edit
  end

  # POST /av1s
  # POST /av1s.json
  def create
    @av1 = Av1.new(av1_params)

    respond_to do |format|
      if @av1.save
        format.html { redirect_to @av1, notice: 'Av1 was successfully created.' }
        format.json { render :show, status: :created, location: @av1 }
      else
        format.html { render :new }
        format.json { render json: @av1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /av1s/1
  # PATCH/PUT /av1s/1.json
  def update
    respond_to do |format|
      if @av1.update(av1_params)
        format.html { redirect_to @av1, notice: 'Av1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @av1 }
      else
        format.html { render :edit }
        format.json { render json: @av1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /av1s/1
  # DELETE /av1s/1.json
  def destroy
    @av1.destroy
    respond_to do |format|
      format.html { redirect_to av1s_url, notice: 'Av1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_av1
      @av1 = Av1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def av1_params
      params.require(:av1).permit(:matricula, :email1, :email2, :nome, :curso)
    end
end
