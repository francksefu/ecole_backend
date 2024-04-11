class DetailPaiementClassroomsController < ApplicationController
  before_action :set_detail_paiement_classroom, only: %i[ show edit update destroy ]

  # GET /detail_paiement_classrooms or /detail_paiement_classrooms.json
  def index
    @detail_paiement_classrooms = DetailPaiementClassroom.all
  end

  # GET /detail_paiement_classrooms/1 or /detail_paiement_classrooms/1.json
  def show
  end

  # GET /detail_paiement_classrooms/new
  def new
    @detail_paiement_classroom = DetailPaiementClassroom.new
  end

  # GET /detail_paiement_classrooms/1/edit
  def edit
  end

  # POST /detail_paiement_classrooms or /detail_paiement_classrooms.json
  def create
    @detail_paiement_classroom = DetailPaiementClassroom.new(detail_paiement_classroom_params)

    respond_to do |format|
      if @detail_paiement_classroom.save
        format.html { redirect_to detail_paiement_classroom_url(@detail_paiement_classroom), notice: "Detail paiement classroom was successfully created." }
        format.json { render :show, status: :created, location: @detail_paiement_classroom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail_paiement_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_paiement_classrooms/1 or /detail_paiement_classrooms/1.json
  def update
    respond_to do |format|
      if @detail_paiement_classroom.update(detail_paiement_classroom_params)
        format.html { redirect_to detail_paiement_classroom_url(@detail_paiement_classroom), notice: "Detail paiement classroom was successfully updated." }
        format.json { render :show, status: :ok, location: @detail_paiement_classroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detail_paiement_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_paiement_classrooms/1 or /detail_paiement_classrooms/1.json
  def destroy
    @detail_paiement_classroom.destroy!

    respond_to do |format|
      format.html { redirect_to detail_paiement_classrooms_url, notice: "Detail paiement classroom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_paiement_classroom
      @detail_paiement_classroom = DetailPaiementClassroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_paiement_classroom_params
      params.fetch(:detail_paiement_classroom, {})
    end
end
