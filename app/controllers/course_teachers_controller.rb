class CourseTeachersController < ApplicationController
  before_action :set_course_teacher, only: %i[ show edit update destroy ]

  # GET /course_teachers or /course_teachers.json
  def index
    @course_teachers = CourseTeacher.all
  end

  # GET /course_teachers/1 or /course_teachers/1.json
  def show
  end

  # GET /course_teachers/new
  def new
    @course_teacher = CourseTeacher.new
  end

  # GET /course_teachers/1/edit
  def edit
  end

  # POST /course_teachers or /course_teachers.json
  def create
    @course_teacher = CourseTeacher.new(course_teacher_params)

    respond_to do |format|
      if @course_teacher.save
        format.html { redirect_to course_teacher_url(@course_teacher), notice: "Course teacher was successfully created." }
        format.json { render :show, status: :created, location: @course_teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_teachers/1 or /course_teachers/1.json
  def update
    respond_to do |format|
      if @course_teacher.update(course_teacher_params)
        format.html { redirect_to course_teacher_url(@course_teacher), notice: "Course teacher was successfully updated." }
        format.json { render :show, status: :ok, location: @course_teacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_teachers/1 or /course_teachers/1.json
  def destroy
    @course_teacher.destroy!

    respond_to do |format|
      format.html { redirect_to course_teachers_url, notice: "Course teacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_teacher
      @course_teacher = CourseTeacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_teacher_params
      params.fetch(:course_teacher, {})
    end
end
