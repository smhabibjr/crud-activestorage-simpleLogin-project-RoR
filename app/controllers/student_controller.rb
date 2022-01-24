class StudentController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id:params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    redirect_to student_index_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :email)
  end

  def edit
  end
end
