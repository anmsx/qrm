class User::RegistrationsController < Devise::RegistrationsController 
  after_filter :create_profile , :only => [:create]
  layout 'signup'

  def sign_up
    redirect_to home_path
  end

  def create_profile
    return if current_user.nil?
    current_user.profile = Profile.new
    current_user.profile.plan = params[:user_plan]
    current_user.profile.save
  end
end
