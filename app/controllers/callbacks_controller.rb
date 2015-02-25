class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(omniauth_auth)
    sign_in_and_redirect @user
  end

  def twitter
    @user = User.from_omniauth(omniauth_auth)
    sign_in_and_redirect @user
  end

  private
    def omniauth_auth
      request.env["omniauth.auth"]
    end
end
