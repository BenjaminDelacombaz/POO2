require_relative './format_validator'
require_relative './patern_validator'
require_relative './number_parts_validator'

class Validator


  def self.check(student_parts)
    errors = Error.new([])
    validator = PaternValidator.new(student_parts.first)
    errors.push(validator.message()) if !validator.valid?
    validator = PaternValidator.new(student_parts.last)
    errors.push(validator.message()) if !validator.valid?
    validator = NumberPartsValidator.new(student_parts, 2)
    errors.push(validator.message()) unless validator.valid?
    errors
  end
end
