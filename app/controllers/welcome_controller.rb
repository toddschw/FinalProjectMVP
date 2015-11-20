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
  end


  def kill
    session.delete(:tutor_id)
    current_tutor = nil
    redirect_to welcome_path
  end
end
