class LessonsController < ApplicationController
    def index
        @lessons = Lesson.all
      end 

    def show
      @lesson = Lesson.find params['id']

      @forum = @lesson.forums
      
    end
    def new
      @lesson = Lesson.new
      @courses = Course.all
    end
  
    def create
      @lesson = Lesson.new(lesson_params)
      if @lesson.save
        redirect_to @lesson, notice: 'Lesson was successfully created.'
      else
        @courses = Course.all
        render :new
      end
    end
  
    def edit
      @lesson = Lesson.find(params[:id])
      @courses = Course.all
    end
  
    def update
      @lesson = Lesson.find(params[:id])
      if @lesson.update(lesson_params)
        redirect_to @lesson, notice: 'Lesson was successfully updated.'
      else
        @courses = Course.all
        render :edit
      end
    end
  
    def destroy
      @lesson = Lesson.find(params[:id])
      @lesson.destroy
      redirect_to lessons_path, notice: 'Lesson was successfully deleted.'
    end
  
    private
  
    def lesson_params
      params.require(:lesson).permit(:title, :content, :course_id)
    end
end