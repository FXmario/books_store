class SuppliesController < ApplicationController
  before_action :set_supply, only: %i[ show edit update destroy ]
  before_action :is_login

  # GET /supplies or /supplies.json
  def index
    @supplies = Supply.all.recent
  end

  # GET /supplies/1 or /supplies/1.json
  def show
  end

  # GET /supplies/new
  def new
    @supply = Supply.new
  end

  # GET /supplies/1/edit
  def edit
  end

  def search
    @search = Book.find(params[:noisbn])
  end

  # POST /supplies or /supplies.json
  def create
    @supply = Supply.new(supply_params)

    respond_to do |format|
      if @supply.save
        format.html { redirect_to supplies_path, notice: "Supply was successfully created." }
        format.json { render :show, status: :created, location: @supply }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplies/1 or /supplies/1.json
  def update
    respond_to do |format|
      if @supply.update(supply_params)
        format.html { redirect_to supply_url(@supply), notice: "Supply was successfully updated." }
        format.json { render :show, status: :ok, location: @supply }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies/1 or /supplies/1.json
  def destroy
    @supply.destroy

    respond_to do |format|
      format.html { redirect_to supplies_url, notice: "Supply was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply
      @supply = Supply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supply_params
      params.require(:supply).permit(:book_id, :distributor_id, :amount, :date)
    end

    def is_login
      unless logged_in?
        redirect_to root_path, notice: "Please Login!"
      end
    end
end
