class WelcomeController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show_results
    #render plain: params.to_json

    @q = params[:q]

    # test for input
    if @q == ''
      flash[:search_empty] = "Search box was empty.  Please try again!"
      redirect_to welcome_path
    end

    @subjects = Subject.search(params[:q])
    # if @subjects
    #   @subjects
    # else
    #   @subjects = "No tutors available"
    # end
  end

  def dashboard
    @tutor = current_tutor
    @messages = current_tutor.messages
    @subjects = @tutor.subjects
  end

  def logout
    if current_tutor
      session.delete(:tutor_id)
      current_tutor = nil
      redirect_to welcome_bye_path
    else
      flash[:not_logged_in] = "Oops..you're not yet logged in."
      redirect_to welcome_path
    end
  end

  def bye
  end


end
