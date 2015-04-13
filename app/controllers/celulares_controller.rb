class CelularesController < ApplicationController
  before_action :set_celular, only: [:show, :edit, :update, :destroy]

  # GET /celulares
  # GET /celulares.json
  def index
    @celulares = Celular.all
  end

  # GET /celulares/1
  # GET /celulares/1.json
  def show
  end

  # GET /celulares/new
  def new
    @celular = Celular.new
  end

  # GET /celulares/1/edit
  def edit
  end

  # POST /celulares
  # POST /celulares.json
  def create
    @celular = Celular.new(celular_params)

    respond_to do |format|
      if @celular.save
        format.html { redirect_to @celular, notice: 'Celular was successfully created.' }
        format.json { render :show, status: :created, location: @celular }
      else
        format.html { render :new }
        format.json { render json: @celular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celulares/1
  # PATCH/PUT /celulares/1.json
  def update
    respond_to do |format|
      if @celular.update(celular_params)
        format.html { redirect_to @celular, notice: 'Celular was successfully updated.' }
        format.json { render :show, status: :ok, location: @celular }
      else
        format.html { render :edit }
        format.json { render json: @celular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celulares/1
  # DELETE /celulares/1.json
  def destroy
    @celular.destroy
    respond_to do |format|
      format.html { redirect_to celulares_url, notice: 'Celular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celular
      @celular = Celular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celular_params
      params.require(:celular).permit(:cliente_id, :imei, :marca, :numserie)
    end
end
