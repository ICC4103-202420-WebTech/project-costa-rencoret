class AnswersController < ApplicationController
    before_action :set_question
  
    def index
      @answers = @question.answers
    end
  
    def show
      @answer = @question.answers.find(params[:id])
    end
  
    def new
      @answer = @question.answers.new
    end
  
    def create
      @answer = @question.answers.new(answer_params)
      @answer.utilizer = current_utilizer
  
      if @answer.save
        redirect_to course_lesson_forum_question_answers_path(@question.forum.lesson.course, @question.forum.lesson, @question.forum, @question), notice: 'Answer was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @answer = @question.answers.find(params[:id])
    end
  
    def update
      @answer = @question.answers.find(params[:id])
      if @answer.update(answer_params)
        redirect_to course_lesson_forum_question_answer_path(@question.forum.lesson.course, @question.forum.lesson, @question.forum, @question, @answer), notice: 'Answer was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @answer = @question.answers.find(params[:id])
      @answer.destroy
      redirect_to course_lesson_forum_question_answers_path(@question.forum.lesson.course, @question.forum.lesson, @question.forum, @question), notice: 'Answer was successfully deleted.'
    end
  
    private
  
    def set_question
      @question = Question.find(params[:question_id])
    end
  
    def answer_params
      params.require(:answer).permit(:body)
    end
  end