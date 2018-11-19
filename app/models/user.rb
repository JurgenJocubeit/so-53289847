class User < ApplicationRecord
  has_one :profile, as: :profilable
  accepts_nested_attributes_for :profile, allow_destroy: true, reject_if: :all_blank
  delegate :age, :city, :gender, :license, to: :profile

  def all_matching_content
    Content.where(
      profile: Profile.where(age: age).
        where(gender: gender, city: city, license: license).
        where(profilable_type: "Content"))
  end

  def any_matching_content
    Content.where(
      profile: Profile.age_restricted(age).
        or(Profile.where(gender: gender)).
        or(Profile.where(city: city)).
        or(Profile.where(license: license)).
        where(profilable_type: "Content"))
  end
end
