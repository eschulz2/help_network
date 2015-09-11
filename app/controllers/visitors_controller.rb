class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(params.require(:visitor).permit(:email, :name, :interest, :city))
    if @visitor.save
      redirect_to :back, notice: "Got it. Thanks!"
    else
      render :new
    end
  end

  def index
    if user_signed_in? && current_user.email == "eschulz2@gmail.com"
      @visitors = Visitor.all
    else
      redirect_to :root
    end
  end

end
