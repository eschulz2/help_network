class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		if user_signed_in? 
			@course = Course.new
		else
			redirect_to :root
		end
	end

	def edit
    @course = Course.find(params[:id])
		if user_signed_in? && current_user == @course.creator
			@course = Course.find(params[:id])
		else
			redirect_to :root
		end

	end

	def update
	  @course = Course.find(params[:id])
	 
	  if @course.update(course_params)
	    redirect_to @course
	  else
	    flash[:alert] = "Failure to Update"
	    redirect_to @course
	  end
	end

	def create
	  @course = Course.new(course_params)

	  @course.save
	  redirect_to @course
	end

	def show
		@course = Course.find(params[:id])
	end
	
	private
	  def course_params
	    params.require(:course).permit(:title, :location, :link, :description, :creator_id)
	  end
end
