class DoctorVisitsController < ApplicationController
  before_action :set_doctor_visit, only: %i[ show edit update destroy ]

  # GET /doctor_visits or /doctor_visits.json
  def index
    @doctor_visits = DoctorVisit.all
  end

  # GET /doctor_visits/1 or /doctor_visits/1.json
  def show
  end

  # GET /doctor_visits/new
  def new
    @doctor_visit = DoctorVisit.new
  end

  # GET /doctor_visits/1/edit
  def edit
  end

  # POST /doctor_visits or /doctor_visits.json
  def create
    @doctor_visit = DoctorVisit.new(doctor_visit_params)

    respond_to do |format|
      if @doctor_visit.save
        format.html { redirect_to @doctor_visit, notice: "Doctor visit was successfully created." }
        format.json { render :show, status: :created, location: @doctor_visit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_visits/1 or /doctor_visits/1.json
  def update
    respond_to do |format|
      if @doctor_visit.update(doctor_visit_params)
        format.html { redirect_to @doctor_visit, notice: "Doctor visit was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor_visit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_visits/1 or /doctor_visits/1.json
  def destroy
    @doctor_visit.destroy
    respond_to do |format|
      format.html { redirect_to doctor_visits_url, notice: "Doctor visit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_visit
      @doctor_visit = DoctorVisit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_visit_params
      params.require(:doctor_visit).permit(:doctor_id, :patient_id, :disease, :fee, :dateofvisit)
    end
end
