class WelcomeController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show_results
    # render plain: params.to_json
    @subjects = Subject.search(params[:q])
    # if @subjects
    #   @subjects
    # else
    #   @subjects = "No tutors available"
    # end
  end

  def dashboard
    @tutor = current_tutor
  end

  def logout
    if current_tutor
      session.delete(:tutor_id)
      current_tutor = nil
      redirect_to welcome_bye_path
    else
      flash[:not_logged_in] = "You're not logged in yet"
      redirect_to welcome_path
    end
  end

  def bye
  end


end
