require_relative 'user_form'
require_relative 'input'

inputs = [Input.new('Tutu', 'text', { "max_lenght" => 10, "min_lenght" => 3 }), Input.new('ben@gmail.com', 'email', {}), Input.new(19, 'number', {})]
form = UserForm.new(inputs)

puts "Le formulaire est-il valide ? #{form.isValid?}"

inputs = [Input.new('Tutu', 'number', { "max_lenght" => 10, "min_lenght" => 3 }), Input.new('ben@gmail.com', 'email', {}), Input.new(19, 'number', {})]
form = UserForm.new(inputs)

puts "Le formulaire est-il valide ? #{form.isValid?}"
