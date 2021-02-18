class UsersController < ApplicationController
    def create
        @user = User.new(strong_params)
        if @user.valid?
            @user.save
            session[:current_user_id] = @user.id
            redirect_to "/owners/#{@user.id}"
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to "/sessions/new" #bad
        end
    end

    private
    def strong_params
        params.require(:user).permit(:role, :username, :password)
    end
end
