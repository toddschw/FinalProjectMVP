class WelcomeController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show_results
    # render plain: params.to_json
    @subjects = Subject.search(params[:q])
  end
end
