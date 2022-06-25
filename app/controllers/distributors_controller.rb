class DistributorsController < ApplicationController
  before_action :set_distributor, only: %i[ show edit update destroy ]
  before_action :is_login

  # GET /distributors or /distributors.json
  def index
     @distributors = Distributor.all
  end

  # GET /distributors/1 or /distributors/1.json
  def show
  end

  # GET /distributors/new
  def new
    @distributor = Distributor.new
  end

  # GET /distributors/1/edit
  def edit
  end

  # POST /distributors or /distributors.json
  def create
    @distributor = Distributor.new(distributor_params)

    respond_to do |format|
      if @distributor.save
        format.html { redirect_to distributors_url, notice: "Distributor was successfully created." }
        format.json { render :index, status: :created, location: @distributor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distributors/1 or /distributors/1.json
  def update
    respond_to do |format|
      if @distributor.update(distributor_params)
        format.html { redirect_to distributors_url, notice: "Distributor was successfully updated." }
        format.json { render :index, status: :ok, location: @distributor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributors/1 or /distributors/1.json
  def destroy
    @distributor.destroy

    respond_to do |format|
      format.html { redirect_to distributors_url, notice: "Distributor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distributor
      @distributor = Distributor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def distributor_params
      params.require(:distributor).permit(:distributor_name, :address, :telephone)
    end

    def is_login
      unless logged_in?
        redirect_to root_path, notice: "Please Login!"
      end
    end
end
