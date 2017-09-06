require 'pry'
class SessionsController < ApplicationController

  def index
  end

  def new
    if session[:name]
      render '/sessions/index'
    end
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to '/sessions/new'
    else
    session[:name] = params[:name]
    redirect_to'/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/index'
  end
end
