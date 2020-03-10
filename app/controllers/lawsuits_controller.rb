class LawsuitsController < ApplicationController

  before_action :authenticate_user!

  def index
    @lawsuit = Lawsuit.all
  end

  def new
    @lawsuit = Lawsuit.new
  end

  def create
    @lawsuit = Lawsuit.new(lawsuit_params.merge(violence_type:params[:lawsuit][:violence_type]))
    if @lawsuit.save
      redirect_to lawsuit_path @lawsuit
    else
      render :new
    end

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

 def lawsuit_send
  @lawsuit = Lawsuit.find(params[:id])
  #envoyer le mail
  LawsuitMailer.lawsuit_send(@lawsuit.id).deliver_later

  #rediriger vers la home

  redirect_to root_path
 end

  private

  def lawsuit_params
    params.require(:lawsuit).permit(:first_name, :last_name, :zip_code , :number_dni , :violence_type, :violence_date, :author_violence, :lawsuit_type, :declaration)
  end
end
