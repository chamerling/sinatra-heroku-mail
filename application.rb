require 'sinatra'
require 'pony'

get '/' do
  "Please open #{request.url}mail"
end

# Test email sending...
# This will not work on localhost bu on heroku due to smtp/gmail configuration and restrictions
get '/mail' do
  Pony.mail :to => ENV['GMAIL_SMTP_USER'],
            :from => ENV['GMAIL_SMTP_USER'],
            :subject => 'email sent from sinatra app on Heroku!',
            :body =>  'This is the body...',
            :via => :smtp,
            :via_options => {
              :address => 'smtp.gmail.com',
              :user_name => ENV['GMAIL_SMTP_USER'],
              :password => ENV['GMAIL_SMTP_PASSWORD']
            }
            
  "Email sent to #{ENV['GMAIL_SMTP_USER']}"
end