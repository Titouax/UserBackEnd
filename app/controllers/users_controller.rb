class UsersController < ApplicationController
  def new
  end

  def new_post
    puts params
    user = User.new
    user.username = params["username"]
    user.bio = params["bio"]
    user.save
    redirect_to "/users/#{User.last.id}"
  end

  def show
    @id = params["id"]
    @username = User.find_by(id: @id).username
    @bio = User.find_by(id: @id).bio
  end
end
