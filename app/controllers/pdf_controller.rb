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

  def lawsuit_send
     @pdf = mail(to: 'liv.asso.364@gmail.com', subject: 'Votre fichier a été envoyé', pdf: 'lawsuit#{id}.pdf')
     @lawsuit_mailer = lawsuit_send('lawsuit#{id}.pdf')

    link_to 'Envoyer le PDF', lawsuit_path(@lawsuit, :format => :pdf, :formtarget => '_blank')
    end
  end
end


