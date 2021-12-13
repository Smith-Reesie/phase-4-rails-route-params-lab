class StudentsController < ApplicationController


  def index
    students = if params[:name]
        Student.by_name(params[:name])
      else
        Student.all
      end    
    render json: students
  end

  
  def show
    student = Student.find(params[:id])
    render json: student
  end
  
  ## CRUD actions vv
  # before_actions :find_student, only: [:show, :update, :destroy]

  # def index
  #   students = Student.all
  #   render json: students
  # end

  # def show 
  #   render json: @student
  # end 

  # def create 
  #   student = Student.create!(params)
  #   render json: student
  # end

  # def update 
  #   @student.update(params)
  #   render json: @student
  # end 

  # def destroy  
  #   @student.destroy
  #   render json: @student
  # end 

  # private

  # def find_student 
  #   @student = Student.find(params[:id])
  # end

end
