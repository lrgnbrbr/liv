class PdfController < ActionMailer::Base
# belongs_to :lawsuit

  def create

  end

  def new
  end

  def show
    @pdf = scope.find(params[:id])
  end

  def scope
  end

  def send
     @pdf = mail(to: 'liv.asso.364@gmail.com', subject: 'Votre fichier a été envoyé', pdf: 'lawsuit#{id}.pdf')
    end
  end
end


