class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :sender,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :recipient

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Willow Bride Contact Form",
      :to => %("#{recipient}"),
      :from => %("Willow Bride", "tammy@willowbride.com")
    }
  end
end