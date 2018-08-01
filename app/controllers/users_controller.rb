class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_beers = @user.beers
    @user_reviews = @user.reviews
  end
end
