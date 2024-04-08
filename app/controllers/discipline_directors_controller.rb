class DisciplineDirectorsController < ApplicationController
  before_action :set_discipline_director, only: %i[ show edit update destroy ]

  # GET /discipline_directors or /discipline_directors.json
  def index
    @discipline_directors = DisciplineDirector.all
  end

  # GET /discipline_directors/1 or /discipline_directors/1.json
  def show
  end

  # GET /discipline_directors/new
  def new
    @discipline_director = DisciplineDirector.new
  end

  # GET /discipline_directors/1/edit
  def edit
  end

  # POST /discipline_directors or /discipline_directors.json
  def create
    @discipline_director = DisciplineDirector.new(discipline_director_params)

    respond_to do |format|
      if @discipline_director.save
        format.html { redirect_to discipline_director_url(@discipline_director), notice: "Discipline director was successfully created." }
        format.json { render :show, status: :created, location: @discipline_director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @discipline_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipline_directors/1 or /discipline_directors/1.json
  def update
    respond_to do |format|
      if @discipline_director.update(discipline_director_params)
        format.html { redirect_to discipline_director_url(@discipline_director), notice: "Discipline director was successfully updated." }
        format.json { render :show, status: :ok, location: @discipline_director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discipline_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_directors/1 or /discipline_directors/1.json
  def destroy
    @discipline_director.destroy!

    respond_to do |format|
      format.html { redirect_to discipline_directors_url, notice: "Discipline director was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline_director
      @discipline_director = DisciplineDirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discipline_director_params
      params.require(:discipline_director).permit(:name, :first_name, :last_name, :date_of_birth, :phone)
    end
end
