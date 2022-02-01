class Doctor < ActiveRecord::Base
  has_many :interns # doctor.interns (an array of intern instances)
  has_many :consultations # doctor.consultations
  has_many :patients, through: :consultations
  # validates :column_name, validation: :rules
  validates :last_name, presence: true, uniqueness: true # can't be nil
  validates :first_name, presence: true


  # We use the association :through instead
  # def patients
  #   patients = []
  #   consultations.each do |consultation|
  #     patients << consultation.patient
  #   end
  #   patients
  # end
end


# restaurant.reviews.each do |review|
#   <p>review.content</p>
# end
