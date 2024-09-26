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
  end