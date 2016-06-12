class CoachesController < ActionController::Base
  def index
    @coaches = Coach.all
  end

  def new
    @coach = Coach.new
  end

  def show
    @coach = Coach.find(params[:id])
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def create
    @coach = Coach.new(coach_params)

    if @coach.save
      redirect_to @coach
    else
      render 'new'
    end
  end

  def update
    @coach = Coach.find(params[:id])

    if @coach.update(coach_params)
      redirect_to @coach
    else
      render 'edit'
    end
  end

  private

  def coach_params
    params.require(:coach).permit(
        :first_name,
        :last_name,
        :email,
        :password,
        :password_confirmation)
  end
end