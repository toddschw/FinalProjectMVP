class SessionsController < ApplicationController
  def new
  end

  def create
    @tutor = Tutor.find_by(username: params[:username]).try(:authenticate, params[:password])

# User.find_by(name: 'david').try(:authenticate, 'mUc3m00RsqyRe')


    if @tutor
      # logged in, hooray
      session[:tutor_id] = @tutor.id
      redirect_to welcome_dashboard_path
    else
      render action: 'new'
    end
  end




end
