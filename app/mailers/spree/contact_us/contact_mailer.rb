class Spree::ContactUs::ContactMailer < Spree::BaseMailer

  def contact_email(contact)
    @contact = contact
    to_email_address = Spree::Config[:contact_us_to_email].present? ? Spree::Config[:contact_us_to_email] : SpreeContactUs.mailer_to

    mail from: (SpreeContactUs.mailer_from || @contact.email),
         reply_to: @contact.email,
         subject: (SpreeContactUs.require_subject ? @contact.subject : Spree.t(:subject, :email => @contact.email)),
         to: to_email_address
  end

end
