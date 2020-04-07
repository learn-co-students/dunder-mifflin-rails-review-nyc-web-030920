class DogsController < ApplicationController

    def index 
        @dogs = Dog.all 
    end

    def new 

    end

    def create 

    end

    def show
        @dog = Dog.find(params[:id])
    end


end
