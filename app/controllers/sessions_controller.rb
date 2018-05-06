class SessionsController < ApplicationController
  def new
  end

  def create
    #raise params.inspect
    if !params[:name] || params[:name].empty?
      flash[:notice] = "Name field cannot be empty and/or nil"
      redirect_to login_path
    else
      session[:name] = params[:name]
      #byebug
      redirect_to root_path
    end
  end

  def destroy
    #raise params.inspect
    session.delete(:name)
    redirect_to root_path
  end
end
