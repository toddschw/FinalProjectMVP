class TutorsController < ApplicationController
  before_action :set_tutor, only: [:show, :edit, :update, :destroy]

  # GET /tutors
  # GET /tutors.json
  def index
    @tutors = Tutor.all
  end

  # GET /tutors/1
  # GET /tutors/1.json
  def show
    @subjects = @tutor.subjects
    @ratings = @tutor.ratings
    @rating = Rating.new
  end

  # GET /tutors/new
  def new

    # render plain: params.to_json
    @tutor = Tutor.new
    @subjects = Subject.all
    @subject = Subject.new


    if !params[:token].nil?
      # @fb_info = Tutor.profile(params[:token])
      @fb_info = Tutor.profile(params[:token])
    end

  end

  # GET /tutors/1/edit
  def edit
    @edit = true
    @subjects = @tutor.subjects  # used to differentiate _form
  end

  # POST /tutors
  # POST /tutors.json
  def create
    # render plain: params.to_json
    @tutor = Tutor.new(tutor_params)

    params[:tutor][:subject_ids].each do |sid|
      if sid.present?
        @tutor.subjects << Subject.find(sid)
      end
    end

    if @tutor.save
      redirect_to new_session_path
      flash[:please_login] = "Your registration was successful!\nPlease log in:"
    else
      render action: 'new'
    end

    # respond_to do |format|
    #   if @tutor.save
    #     format.html { redirect_to @tutor, notice: 'Tutor was successfully created.' }
    #     format.json { render :show, status: :created, location: @tutor }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @tutor.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /tutors/1
  # PATCH/PUT /tutors/1.json
  def update
    respond_to do |format|
      if @tutor.update(tutor_params)
        format.html { redirect_to @tutor, notice: 'Tutor was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutor }
      else
        format.html { render :edit }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutors/1
  # DELETE /tutors/1.json
  def destroy
    @tutor.destroy
    respond_to do |format|
      format.html { redirect_to tutors_url, notice: 'Tutor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dashboard
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_params
      params.require(:tutor).permit(
      :name, :city, :bio, :picurl,
      :rate, :email, :username,
      :password, :subject_ids)
    end
end
