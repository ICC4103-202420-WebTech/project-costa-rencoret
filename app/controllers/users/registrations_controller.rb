class Users::RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:utilizer).permit(:email, :login, :password, :password_confirmation, :name, :last_name, :role)
    end
  
    def account_update_params
      params.require(:utilizer).permit(:email, :login, :password, :password_confirmation, :name, :last_name, :role)
    end
  end