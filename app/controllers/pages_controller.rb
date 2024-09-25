class PagesController < ApplicationController
    def home
      # Logic for home page (if any)
    end
  
    def about
      # Logic for about page (if any)
    end
  
    def contact
      # Logic for contact page (if any)
    end

    def index
      @posts = Post.all
      
      end
  
      def show
          id= params['id']
          @post=Post.find(id)
          
      end
  end
  