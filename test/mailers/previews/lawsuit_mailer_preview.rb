# Preview all emails at http://localhost:3000/rails/mailers/lawsuit_mailer
class LawsuitMailerPreview < ActionMailer::Preview

  # def welcome
  #   @greeting = "Merci de remplir le document choisi."
  #   mail(to: @example.email, subject 'Pensez à vérifier votre déclaration avant envoi.')
  # end

  # Preview this email at http://localhost:3000/rails/mailers/lawsuit_mailer/send
  def send
    LawsuitMailer.send
       mail(to: 'liv.asso.364@gmail.com', subject: 'Envoi du fichier pdf')
  end

end
