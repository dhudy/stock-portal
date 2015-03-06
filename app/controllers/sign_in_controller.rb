class SignInController < ApplicationController
  def create
    @user = User.where(uid: auth_hash[:uid], provider: auth_hash[:provider]).first_or_create
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
