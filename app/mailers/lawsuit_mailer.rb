class LawsuitMailer < ApplicationMailer

  #   en.lawsuit_mailer.send.subject
  #
  # def welcome
  #   @greeting = "Merci de remplir le document choisi."
  #   mail(to: @example.email, subject 'Pensez à vérifier votre déclaration avant envoi.')
  # end


  def lawsuit_send(lawsuit_id)
    @lawsuit = Lawsuit.find(lawsuit_id)
    attachments['attachment.pdf'] = WickedPdf.new.pdf_from_string(
  render_to_string('lawsuits/_pdf_view.html.erb', layout: 'pdf')
)
    mail(to: 'liv.asso.364@gmail.com', subject: 'Envoi du fichier pdf')
 #mails(to: @user.email)
  end

# def lawsuit_send
#   attachments['attachment.pdf'] = WickedPdf.new.pdf_from_string(
#   render_to_string('link_to_view.pdf.erb', layout: 'pdf')
# )
# end

end
