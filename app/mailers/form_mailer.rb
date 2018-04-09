class FormMailer < ApplicationMailer

  default from: "<noreply@langrich.com>"
  default to: "<info@fuji-cherry.com>"


  def received_email(form)
    @form = form
    mail(
      from: @form.email, subject: @form.title)
  end

  def good_sender(form)
    set_smtp_settings
    @form = form
    mail(
      from: @form.email, subject: @form.title)
  end


  private
  def set_smtp_settings
    ActionMailer::Base.smtp_settings = {
    enable_starttls_auto:  true,
    address: 'fujiandcherry.sakura.ne.jp',
    port: '587',
    domain: 'fuji-cherry.com',
    authentication: 'plain',
    user_name: " ENV['GOODS_USER']",
    password: "ENV['GOODS_PASS']"
    }
  end
end
