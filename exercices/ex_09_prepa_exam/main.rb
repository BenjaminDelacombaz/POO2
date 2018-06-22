require_relative './data_provider/provider'
require_relative './models/error'
require_relative './validators/validator'
#
# Exercice Prépa Exam POO2
#

#
# Réusinez ce programme afin que:
#  1. Le fonctionnement depuis l'extérieur de change pas
#  2. On puisse facilement rajouter une "source" de donnée (autre que http et fichier) OK
#  3. On puisse facilement rajouter un "check"

# source = ARGV[0]
# source = 'si-mauvais.txt'
provider = Provider.create(ARGV[0])
students = provider.getStudents() unless !provider

if students != nil
  # By default run all the checks
  errors = []

  # check that each name part starts with a capital
  students.each do |student_parts|
    errors.push(Validator.check(student_parts))
  end

  errors.each { |errors| puts errors.show() }
end
