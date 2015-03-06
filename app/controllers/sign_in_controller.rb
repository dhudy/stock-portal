class SignInController < ApplicationController
  def create
    # raise auth_hash.inspect
    @user = User.where(email: auth_hash[:info][:email]).first_or_create
    @user.auth_token = auth_hash[:credentials][:token]
    self.current_user = @user
    redirect_to '/dashing/dashboards'
  end

  def failure
    raise params[:message].inspect
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
