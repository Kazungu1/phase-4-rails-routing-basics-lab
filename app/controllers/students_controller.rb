class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    data = Student.order(grade: :desc)
    render json: data
  end
end
