class SessionsController < ApplicationController
  def new
  end

  def create
    @tutor = Tutor.find_by(username: params[:username])

    if @tutor
      # logged in, hooray
      session[:tutor_id] = @tutor.id
      redirect_to welcome_dashboard_path
    else
      render action: 'new'
    end
  end

  def logout
    render plain: params.to_json
  end




end
