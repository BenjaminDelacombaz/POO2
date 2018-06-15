require_relative './validators/format_validator'
require_relative './validators/patern_validator'
require_relative './validators/number_parts_validator'
require_relative './data_provider/provider'
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
  issues = []

  # check that each name part starts with a capital
  students.each do |student_parts|
    issues << "#{student_parts.first} doesn't start with a capital" if !PaternValidator.new(student_parts.first).valid?
    issues << "#{student_parts.last} doesn't start with a capital" if !PaternValidator.new(student_parts.last).valid?
  end

  # check that we don't have more the 2 parts
  students.each do |student_parts|
    issues << "#{student_parts.join(' ')} has #{student_parts.size} parts, only 2 allowed" unless NumberPartsValidator.new(student_parts, 2).valid?
  end

  puts issues
end
