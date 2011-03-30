# app/controllers/user_suggestions_controller.rb

class UserSuggestionsController < ApplicationController

  def index
    if cookies.signed[:user_id] == -1
      @division = "N/A"
      @department = "N/A"
      @username = "guest"
      @usersuggestions = UserSuggestion.all
    else 
      user = User.find(cookies.signed[:user_id])
      @division = user['div']
      @department = user['dep']
      @username = user['username']
      if user['dep'] == user['div']
        @usersuggestions = UserSuggestion.find_all_by_div(user['div'])
      else
        @usersuggestions = UserSuggestion.find_all_by_dep(user['dep'])
      end
    end
  end
  
  def new
  end
  
  def create
    text = params[:user_suggestion][:suggestion]
    uid = cookies.signed[:user_id]
    conn = ActiveRecord::Base.connection
    sql = "insert into suggestions(suggest,created,updated) values ('" + text + "',now(),now())"
    conn.insert(sql)
    sql2 = "select currval('suggestion_id_seq')"
    sid = conn.select_value(sql2)
    sql3 = "insert into user_suggestion(user_id,suggestion_id) values (" + uid.to_s + "," + sid.to_s + ")"
    conn.insert(sql3)
    redirect_to :controller => "user_suggestions", :action => "index"
  end
  
  def edit
    @suggestion = Suggestion.find_by_id(params[:sugid])
  end
  
  def chooseSuggestion
    user = User.find(cookies.signed[:user_id])
    if user['dep'] == user['div']
      @suggestions = UserSuggestion.find_all_by_div(user['div'])
    else
      @suggestions = UserSuggestion.find_all_by_uid(user['id'])
    end
  end
  
  def update
    @suggestion = Suggestion.find_by_id(params[:suggestion][:id])
    if @suggestion.update_attributes(
    :suggest => params[:suggestion][:suggest],
    :updated => Time.now)
      redirect_to :controller => "user_suggestions", :action => "index"
    else
      render :action => "edit"
    end
  end
  
end
