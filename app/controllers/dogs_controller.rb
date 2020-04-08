class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :update, :edit, :destroy] 
    def index
        @dogs = Dog.all 
    end 

    def show
      
    end 

    def new
        @dog = Dog.new
    end 

    def create
        @dog = Dog.create(dog_params)
       
        if @dog.valid?
          redirect_to @dog
        else 
          flash[:errors] = @dog.errors.full_messages
          redirect_to  new_dog_path
        end 
      end 

      def edit
      end 

      def update
        if @dog.update(dog_params)
            redirect_to @dog
        else
            flash[:errors] = @dog.errors.full_messages
          redirect_to  edit_dog_path
        end 
      end 

      def destroy
        @dog.destroy
        redirect_to @dog
      end 


    private 
    
    def find_dog
        @dog = Dog.find(params[:id])
    end 


  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
