class SessionsController < ApplicationController
    include SessionsHelper
    def new
    end
    def create
        user = User.find_by(email: params[:session][:email].downcase,password: params[:session][:password])
        if user
            # Log the user in and redirect to the user's show page.
            log_in user
            redirect_to :root
        else
            # Create an error message.
            flash[:danger] = 'Invalid email/password combination' # Not quite right!
            render 'new'
        end
    end
end
