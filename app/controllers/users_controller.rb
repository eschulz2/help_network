class UsersController < ApplicationController

  # def new
  #   @visitor = Visitor.new
  # end

  # def create
  #   @visitor = Visitor.new(params.require(:visitor).permit(:email, :name))
  #   if @visitor.save
  #     redirect_to root_path, notice: "Signed up #{@visitor.email}."
  #   else
  #     render :new
  #   end
  # end

  def index
    @users = User.all
  end

end