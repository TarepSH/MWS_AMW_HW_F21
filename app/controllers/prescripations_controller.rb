class PrescripationsController < ApplicationController
  before_action :set_prescripation, only: %i[ show edit update destroy ]

  # GET /prescripations or /prescripations.json
  def index
    @prescripations = Prescripation.all
  end

  # GET /prescripations/1 or /prescripations/1.json
  def show
  end

  # GET /prescripations/new
  def new
    @prescripation = Prescripation.new
  end

  # GET /prescripations/1/edit
  def edit
  end

  # POST /prescripations or /prescripations.json
  def create
    @prescripation = Prescripation.new(prescripation_params)

    respond_to do |format|
      if @prescripation.save
        format.html { redirect_to @prescripation, notice: "Prescripation was successfully created." }
        format.json { render :show, status: :created, location: @prescripation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescripation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescripations/1 or /prescripations/1.json
  def update
    respond_to do |format|
      if @prescripation.update(prescripation_params)
        format.html { redirect_to @prescripation, notice: "Prescripation was successfully updated." }
        format.json { render :show, status: :ok, location: @prescripation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescripation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescripations/1 or /prescripations/1.json
  def destroy
    @prescripation.destroy
    respond_to do |format|
      format.html { redirect_to prescripations_url, notice: "Prescripation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescripation
      @prescripation = Prescripation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescripation_params
      params.require(:prescripation).permit(:pharmacist_id, :patient_id, :drug_id, :dateofpresc)
    end
end
