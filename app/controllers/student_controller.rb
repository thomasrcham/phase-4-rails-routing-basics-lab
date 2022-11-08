class StudentController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(:grade).reverse
    render json: students
  end

  def highest_grade
    student = Student.all.order(:grade).reverse.first
    render json: student
  end
end
