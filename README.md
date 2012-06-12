# sinatra-heroku-mail

Sinatra app sample on how to send emails using gmail SMTP server. Nothing complicated, just aggregated several information into one place...

## Configure

Taken from http://blog.heroku.com/archives/2009/11/9/tech_sending_email_with_gmail/

### On localhost

Export some environment variables:

- export GMAIL_SMTP_USER=username@gmail.com
- export GMAIL_SMTP_PASSWORD=yourpassword

### On Heroku

Add environement variables to heroku:

- heroku config:add GMAIL_SMTP_USER=username@gmail.com
- heroku config:add GMAIL_SMTP_PASSWORD=yourpassword

## Run

### On localhost

'ruby -rubygems application.rb'

### On heroku

1. Clone this repository
2. Go to the repository folder, 'heroku create' (check heroku.com dev center for details)
3. Configure environment variables as described above
4. Push to heroku : 'git push heroku master'

## Use

When deployed on heroku, open the URL heroku returned in step 4 suffixed by '/mail' : http://HEROKUAPP/mail. You should receive a mail at the GMAIL_SMTP_USER specificied before.


