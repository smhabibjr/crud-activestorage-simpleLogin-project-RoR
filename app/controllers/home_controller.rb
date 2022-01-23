class HomeController < ApplicationController
  def index
    @user = Student.all
    value = 1
  end

  def update
    userName = (params[:userName])
    userEmail = (params[:userEmail])
    if userName.present?
      create_new_record = Student.create(name:userName, email:userEmail)
      if create_new_record
        varlue = true
      else
        value = false
      end

    end
  end
end
