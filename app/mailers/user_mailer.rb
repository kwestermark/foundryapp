class UserMailer < ApplicationMailer
	default from: 'kwestermark21@gmail.com'

	def contact_form(email, name, message)
    @message = message
    @name = name
      mail(:from => email,
          :to => 'kwestermark21@gmail.com',
          :subject => "A new contact form message from #{name}")
    end

    def welcome(user)
  @appname = "Bike Shop"
  mail(to: user.email,
       subject: "Welcome to #{@appname}!")
end

end
