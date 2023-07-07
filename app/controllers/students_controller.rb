class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Student not found' }, status: :not_found
  end

end
