class StudyDirectorsController < ApplicationController
  before_action :set_study_director, only: %i[ show edit update destroy ]

  # GET /study_directors or /study_directors.json
  def index
    @study_directors = StudyDirector.all
  end

  # GET /study_directors/1 or /study_directors/1.json
  def show
  end

  # GET /study_directors/new
  def new
    @study_director = StudyDirector.new
  end

  # GET /study_directors/1/edit
  def edit
  end

  # POST /study_directors or /study_directors.json
  def create
    @study_director = StudyDirector.new(study_director_params)

    respond_to do |format|
      if @study_director.save
        format.html { redirect_to study_director_url(@study_director), notice: "Study director was successfully created." }
        format.json { render :show, status: :created, location: @study_director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @study_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_directors/1 or /study_directors/1.json
  def update
    respond_to do |format|
      if @study_director.update(study_director_params)
        format.html { redirect_to study_director_url(@study_director), notice: "Study director was successfully updated." }
        format.json { render :show, status: :ok, location: @study_director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @study_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_directors/1 or /study_directors/1.json
  def destroy
    @study_director.destroy!

    respond_to do |format|
      format.html { redirect_to study_directors_url, notice: "Study director was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_director
      @study_director = StudyDirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_director_params
      params.require(:study_director).permit(:name, :first_name, :last_name, :date_of_birth, :phone)
    end
end
