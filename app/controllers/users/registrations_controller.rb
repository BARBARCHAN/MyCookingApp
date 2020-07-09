class Users::RegistrationsController < Devise::RegistrationsController

  def select

  end

  def create
    if params[:sns_auth] == 'true'
      pass = Devise.friendly_token
      params[:user][:password] = pass
      params[:user][:password_confirmation] = pass
    end
    super
  end
  
end