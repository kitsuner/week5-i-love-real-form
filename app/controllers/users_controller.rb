class UsersController < ApplicationController
  def new
  	@post = User.new
  	@user = User.new
  end

#pure HTML version
  def create
  	puts params
  	@user = User.new
  	@user.username = params["first_name"]
  	@user.email = params["email"]
  	@user.bio = params["bio"]
  	@user.save
  	@name = User.last.username
  end

#form_tag version
 # def create

  #	@post = User.new('username' => params[:username],
  #					 'email' => params[:email],
  #					 'bio' => params[:bio])
  #	@post.save
  #	@name = User.last.username
  #end

   

#form_for version
#   def create
#   	@name = User.last.username
#   end
end
