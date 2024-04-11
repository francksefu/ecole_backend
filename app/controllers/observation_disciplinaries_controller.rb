class ObservationDisciplinariesController < ApplicationController
  before_action :set_observation_disciplinary, only: %i[ show edit update destroy ]

  # GET /observation_disciplinaries or /observation_disciplinaries.json
  def index
    @observation_disciplinaries = ObservationDisciplinary.all
  end

  # GET /observation_disciplinaries/1 or /observation_disciplinaries/1.json
  def show
  end

  # GET /observation_disciplinaries/new
  def new
    @observation_disciplinary = ObservationDisciplinary.new
  end

  # GET /observation_disciplinaries/1/edit
  def edit
  end

  # POST /observation_disciplinaries or /observation_disciplinaries.json
  def create
    @observation_disciplinary = ObservationDisciplinary.new(observation_disciplinary_params)

    respond_to do |format|
      if @observation_disciplinary.save
        format.html { redirect_to observation_disciplinary_url(@observation_disciplinary), notice: "Observation disciplinary was successfully created." }
        format.json { render :show, status: :created, location: @observation_disciplinary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @observation_disciplinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observation_disciplinaries/1 or /observation_disciplinaries/1.json
  def update
    respond_to do |format|
      if @observation_disciplinary.update(observation_disciplinary_params)
        format.html { redirect_to observation_disciplinary_url(@observation_disciplinary), notice: "Observation disciplinary was successfully updated." }
        format.json { render :show, status: :ok, location: @observation_disciplinary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @observation_disciplinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observation_disciplinaries/1 or /observation_disciplinaries/1.json
  def destroy
    @observation_disciplinary.destroy!

    respond_to do |format|
      format.html { redirect_to observation_disciplinaries_url, notice: "Observation disciplinary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation_disciplinary
      @observation_disciplinary = ObservationDisciplinary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def observation_disciplinary_params
      params.require(:observation_disciplinary).permit(:data, :observation)
    end
end
