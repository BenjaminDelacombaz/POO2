%w{form form_ex form_validator presence_validator format_validator email_validator user_form contact_form}.each {|file| require_relative file}

form = UserForm.new(:firstname => 'Pascal', :lastname => 'Hurni', :email => 'phi@cpnv.ch')
form.add_validator(PresenceValidator.new(:firstname))
form.add_validator(EmailValidator.new(:email))
puts "Form with validators and correct fields: #{form.valid?}"

# update fields with bad values and re-run the validation
# Note that we didn't re-create the form nor the validators chain!
form.firstname = "   "
form.email = "bla bla"
puts "Form with validators and bad fields: #{form.valid?}"

form = ContactForm.new(:email => 'me@example.com', :body => 'You rock!')
puts "Form with validators in the class: #{form.valid?}"
