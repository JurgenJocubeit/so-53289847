class Content < ApplicationRecord
  has_one :profile, as: :profilable
  accepts_nested_attributes_for :profile, allow_destroy: true, reject_if: :all_blank
end
