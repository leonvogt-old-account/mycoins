class OdersController < ApplicationController
  before_action :set_oder, only: [:show, :edit, :update, :destroy]

  # GET /oders
  # GET /oders.json
  def index
    @oders = Oder.all
  end

  # GET /oders/1
  # GET /oders/1.json
  def show
  end

  # GET /oders/new
  def new
    @oder = Oder.new
  end

  # GET /oders/1/edit
  def edit
  end

  # POST /oders
  # POST /oders.json
  def create
    @oder = Oder.new(oder_params)

    respond_to do |format|
      if @oder.save
        format.html { redirect_to root_path, notice: 'Oder was successfully created.' }
        format.json { render :show, status: :created, location: @oder }
      else
        format.html { render :new }
        format.json { render json: @oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oders/1
  # PATCH/PUT /oders/1.json
  def update
    respond_to do |format|
      if @oder.update(oder_params)
        format.html { redirect_to root_path, notice: 'Oder was successfully updated.' }
        format.json { render :show, status: :ok, location: @oder }
      else
        format.html { render :edit }
        format.json { render json: @oder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oders/1
  # DELETE /oders/1.json
  def destroy
    @oder.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Oder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oder
      @oder = Oder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oder_params
      params.require(:oder).permit(:user_id, :coin, :date, :number_of_coins, :price_of_coin, :payed_with)
    end
end
