class FormMailer < ApplicationMailer

  default from: "<noreply@langrich.com>"
  default to: "<koutaodawara@fuji-cherry.com>"


  def received_email(form)
    @form = form
    mail(
      from: @form.email, subject: @form.title)
  end
end
