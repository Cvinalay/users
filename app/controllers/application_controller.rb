class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
  
  def show
    @user= User.find_by_id(params['id'])
  
    render 'show'
    end
  
 def new
 end
  
  def create
    g = User.new
  g.caption = params['caption']
  g.url = params['url']
   g.bio = params['bio']
  g.save
    redirect_to "/user/#{ g.id }"
 end
  
 def edit
   @user = User.find_by_id(params['id'])
end
  def update
    g = User.find_by_id(params['id'])
  g.caption = params['caption']
  g.url = params['url']
  g.save
    redirect_to "/user/#{ g.id }"
end
  def destroy
    g = User.find_by_id(params['id'])
  g.destroy
end
end