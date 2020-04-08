class DogsController < ApplicationController
    def index 
        @dogs = Dog.all
    end

    def popular_index
        @dogs_popularity = Dog.most_popular
        render :popular_index
    end

    def show
        @dog = Dog.find(params[:id])
    end

    
end
