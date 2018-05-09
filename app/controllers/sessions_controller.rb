class SessionsController < ApplicationController
  def new
    Session.new
  end
  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/' #OR root_path
    end
  end
  def destroy
    if session[:name] == nil || session[:name].empty?
    else
      session[:name] = nil
    end
  end


end
