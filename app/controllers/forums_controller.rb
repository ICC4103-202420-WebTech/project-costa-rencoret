class ForumsController < ApplicationController
  def index
      @forums = Forum.all
    end 

    def show
      puts params.inspect  
      
      @forum = Forum.find(params['id'])
      @questions = @forum.questions
      
      if params['question_id'].present?
        @question = @questions.find_by(id: params['question_id'])
        
        if @question
          @answers = @question.answers
        else
          @answers = []
          redirect_to forum_path(@forum), alert: "Question not found"
          return
        end
      else
        @answers = []
      end
      
      puts @answers.inspect  
      
      if @questions.empty?
        flash.now[:notice] = "No questions found for this forum."
      end
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