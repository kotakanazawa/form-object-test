class UserRegistrationsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user_registration_form = UserRegistrationForm.new
  end

  def create
    @user_registration_form = UserRegistrationForm.new(user_registration_form_params)

    if @user_registration_form.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def user_registration_form_params
      params.require(:user_registration_form).permit(:name, :address)
    end
end
