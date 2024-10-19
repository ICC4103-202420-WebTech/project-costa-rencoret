class CoursesController < ApplicationController

    def index
      @courses = Course.all
    end
  
    def show
      @course = Course.find params['id']
      @lessons = @course.lessons
    end

    def new
      @course = Course.new
    end
  
    def create
      @course = Course.new(course_params)
      if @course.save
        redirect_to @course, notice: 'Course was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @course = Course.find(params[:id])
    end
  
    def update
      @course = Course.find(params[:id])
      if @course.update(course_params)
        redirect_to @course, notice: 'Course was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @course = Course.find(params[:id])
      @course.destroy
      redirect_to courses_path, notice: 'Course was successfully deleted.'
    end
  
    private
  
    def course_params
      params.require(:course).permit(:name, :category, :teacher_id)
    end
end