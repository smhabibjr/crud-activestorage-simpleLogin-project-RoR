class StudentController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @single_student_show = Student.find(params[:id])
    value = 1
  end

  def new
    @add = Student.new
  end

  def create
    added_new_student = Student.new(params.require(:student).permit(:name, :email))
    if added_new_student.save
      added_user_id = added_new_student.id
      redirect_to "/student/show/#{added_user_id}"
      flash[:notice] = "Student #{added_new_student.name} successfully added"
    else
      redirect_to student_new_path
    end

  end

  def edit

  end

  def update
  end

  def destroy
  end
end
