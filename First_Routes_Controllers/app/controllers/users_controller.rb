class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def create
       user = User.new(params.require(:user).permit(:name, :email))
       if user.save
            render json: user
            user.save!
       else
            render json: user.errors.full_messages, status: :not_acceptable
       end
    end 

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    def destroy 
        user = User.find(params[:id])
        User.destroy(params[:id])
    end 

    def update 
        user = User.find(params[:id])
        user.update(user_params)
    end 

    private 
    
    def user_params
        user = params.require(:user).permit(:name, :email)
    end 


end
