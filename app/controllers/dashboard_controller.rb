class DashboardController < ApplicationController
  before_action :authenticate_teacher!
  before_action :authenticate_parent!
  before_action :authenticate_student!
  # before_action :teacher_logged_in?, only: [:instructor]
  # before_action :student_logged_in?, only: [:student]
  # before_action :parent_logged_in?, only: [:parent]

  def index
    if session[:user_type] == "teacher"
      redirect_to :controller => 'dashboard', :action => 'teacher'
    elsif session[:user_type] == "student"
      redirect_to :controller => 'dashboard', :action => 'student'
    elsif session[:user_type] == "parent"
      redirect_to :controller => 'dashboard', :action => 'parent'
    end
  end

  def student
    @student = Student.find_by_id(session[:user_id])
    @grades = Grade.where(student_id: session[:user_id]).all
  end

  def parent
    @parent = Parent.find_by_id(session[:user_id])
    @grades = Grade.where(student_id: @parent.student_id).all
  end

  def teacher
    @teacher = Teacher.find_by_id(session[:user_id])
  end

end
