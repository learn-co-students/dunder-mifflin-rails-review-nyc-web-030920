class DogsController < ApplicationController
    def index
        # byebug
        @dogs = Dog.all 
        @sort = false 
  
        if params[:sort]
          @sort = true
          @sorted_dogs = Dog.most_owners
          render :index
        end
      end
  
      def show
        @dog = Dog.find(params[:id])
      end
end
