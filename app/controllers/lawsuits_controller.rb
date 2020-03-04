class LawsuitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @lawsuit = Lawsuit.all
  end

  def new
    @lawsuit = Lawsuit.new
  end

  def create
    Lawsuit.create!(lawsuit_params)
    redirect_to lawsuit_path
  end

  private

  def lawsuit_params
    params.require(:lawsuit).permit(:first_name, :last_name, :zip_code , :number_dni , :violence_type, :violence_date, :author_violence, :lawsuit_type, :declaration)
  end


end
