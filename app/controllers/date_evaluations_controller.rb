class DateEvaluationsController < ApplicationController
  before_action :set_date_evaluation, only: %i[ show edit update destroy ]

  # GET /date_evaluations or /date_evaluations.json
  def index
    @date_evaluations = DateEvaluation.all
  end

  # GET /date_evaluations/1 or /date_evaluations/1.json
  def show
  end

  # GET /date_evaluations/new
  def new
    @date_evaluation = DateEvaluation.new
  end

  # GET /date_evaluations/1/edit
  def edit
  end

  # POST /date_evaluations or /date_evaluations.json
  def create
    @date_evaluation = DateEvaluation.new(date_evaluation_params)

    respond_to do |format|
      if @date_evaluation.save
        format.html { redirect_to date_evaluation_url(@date_evaluation), notice: "Date evaluation was successfully created." }
        format.json { render :show, status: :created, location: @date_evaluation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_evaluations/1 or /date_evaluations/1.json
  def update
    respond_to do |format|
      if @date_evaluation.update(date_evaluation_params)
        format.html { redirect_to date_evaluation_url(@date_evaluation), notice: "Date evaluation was successfully updated." }
        format.json { render :show, status: :ok, location: @date_evaluation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_evaluations/1 or /date_evaluations/1.json
  def destroy
    @date_evaluation.destroy!

    respond_to do |format|
      format.html { redirect_to date_evaluations_url, notice: "Date evaluation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_evaluation
      @date_evaluation = DateEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_evaluation_params
      params.require(:date_evaluation).permit(:date, :maximum, :classroom_course_id, :periode_id, :is_remote)
    end
end
