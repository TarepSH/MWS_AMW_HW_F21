class Prescripation < ApplicationRecord
  belongs_to :pharmacist
  belongs_to :patient
  belongs_to :drug
end
