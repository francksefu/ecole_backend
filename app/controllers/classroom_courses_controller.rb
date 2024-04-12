class ClassroomCoursesController < ApplicationController
  before_action :set_classroom_course, only: %i[ show edit update destroy ]

  # GET /classroom_courses or /classroom_courses.json
  def index
    @classroom_courses = ClassroomCourse.all
  end

  # GET /classroom_courses/1 or /classroom_courses/1.json
  def show
  end

  # GET /classroom_courses/new
  def new
    @classroom_course = ClassroomCourse.new
  end

  # GET /classroom_courses/1/edit
  def edit
  end

  # POST /classroom_courses or /classroom_courses.json
  def create
    @classroom_course = ClassroomCourse.new(classroom_course_params)

    respond_to do |format|
      if @classroom_course.save
        format.html { redirect_to classroom_course_url(@classroom_course), notice: "Classroom course was successfully created." }
        format.json { render :show, status: :created, location: @classroom_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classroom_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroom_courses/1 or /classroom_courses/1.json
  def update
    respond_to do |format|
      if @classroom_course.update(classroom_course_params)
        format.html { redirect_to classroom_course_url(@classroom_course), notice: "Classroom course was successfully updated." }
        format.json { render :show, status: :ok, location: @classroom_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classroom_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_courses/1 or /classroom_courses/1.json
  def destroy
    @classroom_course.destroy!

    respond_to do |format|
      format.html { redirect_to classroom_courses_url, notice: "Classroom course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_course
      @classroom_course = ClassroomCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classroom_course_params
      params.fetch(:classroom_course, {})
    end
end
