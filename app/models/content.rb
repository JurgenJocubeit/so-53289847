class Content < ApplicationRecord
  has_one :profile, as: :profilable
end
