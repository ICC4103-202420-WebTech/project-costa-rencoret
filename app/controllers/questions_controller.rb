class QuestionsController < ApplicationController
    before_action :set_forum
    
    def index
      @questions = @forum.questions.includes(:utilizer)
    end
    
    def show
      @question = @forum.questions.find(params[:id])
    end
    
    def new
      @question = @forum.questions.new
    end
    
    def create
      @question = @forum.questions.new(question_params)
      @question.utilizer = current_utilizer
      if @question.save
        redirect_to course_lesson_forum_path(@forum.lesson.course, @forum.lesson, @forum), notice: 'Question was successfully created.'
      else
        render :new
      end
    end
    
    def edit
      @question = @forum.questions.find(params[:id])
    end
    
    def update
      @question = @forum.questions.find(params[:id])
      if @question.update(question_params)
        redirect_to course_lesson_forum_path(@forum.lesson.course, @forum.lesson, @forum), notice: 'Question was successfully updated.'
      else
        render :edit
      end
    end
    
    def destroy
      @question = @forum.questions.find(params[:id])
      @question.destroy
      redirect_to course_lesson_forum_path(@forum.lesson.course, @forum.lesson, @forum), notice: 'Question was successfully deleted.'
    end
    
    private
    
    def set_forum
      @forum = Forum.find(params[:forum_id])
    end
    
    def question_params
      params.require(:question).permit(:title, :content)
    end
  end
  