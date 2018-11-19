class Profile < ApplicationRecord
  belongs_to :profilable, polymorphic: true, optional: true
  scope :age_restricted, -> (age) { where("? >= min_age AND ? <= max_age", age, age) }
  scope :age_restricted_from, -> (min) { where("? >= min_age", min) }
  scope :age_restricted_to, -> (max) { where("? <= max_age", max) }
end
