class UsersController < ApplicationController

  def new
  end

  def create
    first_name = params[:user][:f_name]
    last_name = params[:user][:l_name]
    email = params[:user][:email]
    username = params[:user][:username]
    password = params[:user][:password]
    department = params[:user][:dep]
    division = params[:user][:div]
    conn = ActiveRecord::Base.connection
    sql = "insert into users_view (first_name,last_name,email,username,password,dep,div) " +
    "values ('" + first_name + "','" + last_name + "','" + email + "',
    '" + username + "', '" + password + "','" + department + "','" + division + "')"
    conn.insert(sql)
    redirect_to :controller => "users", :action => "index"
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
  
  def chooseUser
    @users = User.all
  end

  def update
    @user = User.find(params[:user][:id])
    if @user.update_attributes(:first_name => params[:user][:first_name],
      :last_name => params[:user][:last_name],
      :email => params[:user][:email],
      :username => params[:user][:username],
      :dep => params[:user][:dep],
      :div => params[:user][:div])
      redirect_to :controller => "users", :action => "index"
    else
      render :action => "edit"
    end
  end
  
end
