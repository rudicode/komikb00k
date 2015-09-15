class RegistrationsController < Devise::RegistrationsController
  # inherit from Devise, so we can benefit from any updates in the far-future

  before_action :configure_permitted_parameters

  def new
    super
  end

  def create
    super
    # add custom create logic here
    # @user = User.new(devise_params)
    #
    # if @user.save
    #   redirect_to @user
    # else
    #   render 'new'
    # end
  end

  def update
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name,:description,
       :email, :password, "password_confirmation") }
  end

end
