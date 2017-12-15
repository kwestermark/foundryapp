class UserMailer < ApplicationMailer
	default from: 'kwestermark21@gmail.com'

	def contact_form(email, name, message)
    @message = message
    @name = name
      mail(:from => email,
          :to => 'kwestermark21@gmail.com',
          :subject => "A new contact form message from #{name}")
    end
end
