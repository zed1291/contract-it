class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def destroy
        session.delete :current_user_id
        redirect_to '/sessions/new'
    end

    # def login
    #     @user = User.new
    # end

    def show
        @user = User.find_by(session[:current_user_id])
        byebug
        if @user[:role] == "Owner"
            redirect_to "/owners/#{@user.id}"
        elsif @user[:role] == "General Contractor"
            edirect_to "/general_contractor/#{@user.id}"
        else #only other option is subcontractor
            redirect_to "/subcontractor/#{@user.id}"
        end
    end
end