class User::PersonalInformationsController < ApplicationController
  before_action :set_user_personal_information, only: [:show, :edit, :update, :destroy]

  # GET /user/personal_informations
  # GET /user/personal_informations.json
  def index
    @user_personal_informations = User::PersonalInformation.all
  end

  # GET /user/personal_informations/1
  # GET /user/personal_informations/1.json
  def show
  end

  # GET /user/personal_informations/new
  def new
    @user_personal_information = User::PersonalInformation.new
  end

  # GET /user/personal_informations/1/edit
  def edit
  end

  # POST /user/personal_informations
  # POST /user/personal_informations.json
  def create
    @user_personal_information = User::PersonalInformation.new(user_personal_information_params)

    respond_to do |format|
      if @user_personal_information.save
        format.html { redirect_to @user_personal_information, notice: 'Personal information was successfully created.' }
        format.json { render :show, status: :created, location: @user_personal_information }
      else
        format.html { render :new }
        format.json { render json: @user_personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/personal_informations/1
  # PATCH/PUT /user/personal_informations/1.json
  def update
    respond_to do |format|
      if @user_personal_information.update(user_personal_information_params)
        format.html { redirect_to @user_personal_information, notice: 'Personal information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_personal_information }
      else
        format.html { render :edit }
        format.json { render json: @user_personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/personal_informations/1
  # DELETE /user/personal_informations/1.json
  def destroy
    @user_personal_information.destroy
    respond_to do |format|
      format.html { redirect_to user_personal_informations_url, notice: 'Personal information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_personal_information
      @user_personal_information = User::PersonalInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_personal_information_params
      params.require(:user_personal_information).permit(:real_name, :address, :user_id)
    end
end
