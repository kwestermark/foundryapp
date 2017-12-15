# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# SendGrid mail settings Usermailer
ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '587',
  authentication: :plain,
  user_name: ENV['app76734448@heroku.com'],
  password: ENV['ycdmkp0u7855'],
  domain: 'heroku.com',
  enable_starttls_auto: true
}

