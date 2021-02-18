class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def destroy
        session.delete :current_user_id
        redirect_to '/sessions/new'
    end

    def login
        @user = User.new
    end
end