class Patient < ActiveRecord::Base
  # associations
  has_many :consultations # patient.consultations
  # validations
end
