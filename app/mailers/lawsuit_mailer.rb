class LawsuitMailer < ApplicationMailer

  #   en.lawsuit_mailer.send.subject
  #
  # def welcome
  #   @greeting = "Merci de remplir le document choisi."
  #   mail(to: @example.email, subject 'Pensez à vérifier votre déclaration avant envoi.')
  # end

  def send
    @pdf = mail(to: 'liv.asso.364@gmail.com', subject: 'Envoi du fichier pdf')

  end
end
