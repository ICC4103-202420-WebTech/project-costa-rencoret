class LessonsController < ApplicationController


    def index
        @lessons = Lesson.all
      end 

    def show
      @lesson = Lesson.find params['id']

      @forum = @lesson.forums
      
    end
  end