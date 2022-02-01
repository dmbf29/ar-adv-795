class Intern < ActiveRecord::Base
  # associations
  belongs_to :doctor # intern.doctor -> gives the instance of the doctor
  # validations
end
