class StudentsController < ActionController::Base
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(
        :first_name,
        :last_name,
        :email,
        :password,
        :password_confirmation)

  end
end