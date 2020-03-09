class LawsuitsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lawsuit = Lawsuit.all
  end

  def new
    @lawsuit = Lawsuit.new
  end

  def create
    @lawsuit = Lawsuit.create!(lawsuit_params.merge(violence_type:params[:lawsuit][:violence_type]))
    redirect_to lawsuit_path @lawsuit
  end

  def show
    @lawsuit=Lawsuit.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render(
          pdf: "Your lawsuit",
          template: "lawsuits/show.html.erb",
          layout: 'pdf.html'
        )
     end
   end
 end

  private

  def lawsuit_params
    params.require(:lawsuit).permit(:first_name, :last_name, :zip_code , :number_dni , :violence_type, :violence_date, :author_violence, :lawsuit_type, :declaration)
  end
end
