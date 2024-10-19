class ForumsController < ApplicationController
  def index
      @forums = Forum.all
    end 

  def show
    @forum = Forum.find params['id']
    @questions = @forum.questions
    @question = Question.find params['id']
    @answers = @question.answers
  end
  def new
    @forum = Forum.new
    @lessons = Lesson.all # For the select field
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to @forum, notice: 'Forum was successfully created.'
    else
      @lessons = Lesson.all
      render :new
    end
  end

  def edit
    @forum = Forum.find(params[:id])
    @lessons = Lesson.all # For the select field
  end

  def update
    @forum = Forum.find(params[:id])
    if @forum.update(forum_params)
      redirect_to @forum, notice: 'Forum was successfully updated.'
    else
      @lessons = Lesson.all
      render :edit
    end
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path, notice: 'Forum was successfully deleted.'
  end

  private

  def forum_params
    params.require(:forum).permit(:title, :lesson_id)
  end
end