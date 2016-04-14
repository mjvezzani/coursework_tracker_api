module Api
  class AssignmentsController < ApplicationController

    def create
      course = Course.find(params[:course_id])
      assignment = course.assignments.build(assignment_params)
      if assignment.save
        render json: assignment, status: 201, location: api_course_assignments_url(assignment)
      else
        render json: assignment.errors, status: 422
      end
    end

    def update
      assignment = Assignment.find(params[:id])
      if assignment.update(assignment_params)
        render json: assignment, status: 200
      else
        render json: assignment.errors, status: 422
      end
    end

    private

    def assignment_params
      params.require(:assignment).permit(:name, :complete, :points_possible, :points_received, :course_id)
    end

  end
end
