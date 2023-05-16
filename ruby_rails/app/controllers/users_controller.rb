class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]
  @@users = [
    {id: 1, name: 'Dung'},
    {id: 2, name: 'Nam'},
    {id: 3, name: 'Mai'}
  ]
  
  # GET /users
  def index
    render json: @@users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      # @user = User.find(params[:id])
      @user = @@users.find{|user| user[:id] == Integer(params[:id])}
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end
end
