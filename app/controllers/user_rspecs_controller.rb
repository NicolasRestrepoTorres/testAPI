class UserRspecsController < ApplicationController
  before_action :set_user_rspec, only: [:show, :update, :destroy]

  # GET /user_rspecs
  def index
    @user_rspecs = UserRspec.all

    render json: @user_rspecs
  end

  # GET /user_rspecs/1
  def show
    render json: @user_rspec
  end

  # POST /user_rspecs
  def create
    @user_rspec = UserRspec.new(user_rspec_params)

    if @user_rspec.save
      render json: @user_rspec, status: :created, location: @user_rspec
    else
      render json: @user_rspec.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_rspecs/1
  def update
    if @user_rspec.update(user_rspec_params)
      render json: @user_rspec
    else
      render json: @user_rspec.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_rspecs/1
  def destroy
    @user_rspec.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rspec
      @user_rspec = UserRspec.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_rspec_params
      params.require(:user_rspec).permit(:name, :email)
    end
end
