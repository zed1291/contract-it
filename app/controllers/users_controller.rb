class UsersController < ApplicationController
    def create
        @user = User.new(strong_params)
        if @user.valid?
            @user.save
            session[:current_user_id] = @user.id
            session[:role] = @user.role
            redirect_to 'sessions#show'
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to "/sessions/new"
        end
    end

    def show
        @user = User.find_by(params[:id])
    end


    private
    def strong_params
        params.require(:user).permit(:role, :username, :password)
    end
end
