module Api
  class CoursesController < ApplicationController
    def index
      courses = Course.all
      render json: courses, status: 200
    end

    def show
      course = Course.find(params[:id])
      render json: course, status: 200
    end

    def create
      course = Course.new(course_params)
      if course.save
        render nothing: true, status: 204, location: api_course_url(course)
      else
        render json: course.errors, status: 422
      end
    end

    def update
      course = Course.find(params[:id])
      if course.update(course_params)
        render json: course, status: 200
      else
        render jason: course.errors, status: 422
      end
    end

    def destroy
      course = Course.find(params[:id])
      course.destroy
      head 204
    end

    private

    def course_params
      params.require(:course).permit(:name, :credit_hours)
    end
  end
end
